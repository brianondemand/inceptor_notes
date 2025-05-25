## Description
Ligolo-ng is a versatile tool designed for network pivoting, offering a seamless integration of agent and proxy functionalities for penetration testers. Here's an overview of its components and operations:
##### Agent (Target Machine):
- The agent component is installed and executed on the target machine.
- It establishes a robust reverse TCP/TLS connection, enabling bidirectional communication with the proxy on the attacker's machine.
- The agent typically listens for incoming connections initiated by the proxy, facilitating remote access and control.

##### Proxy (Attacker Machine):
- The proxy tool operates on the attacker's machine, acting as a conduit for network traffic manipulation
- It communicates securely with the agent through the established reverse connection, ensuring data confidentiality and integrity.
- The proxy facilitates seamless tunneling and pivoting of network traffic between the attacker's system and the compromised target, enabling various attack scenarios and reconnaissance activities.

## Commands
- **Starting the Agent**:  On the target machine to initiate the agent, which will start listening for incoming connections from the proxy.
```
./ligolo-ng -listen
```

- **Starting the Proxy**: Launch the proxy tool on the attacker's machine, establishing a connection with the agent using its IP address for communication.
```
`./ligolo-ng -connect <agent-ip>`
```

## More Information
More information ---> https://github.com/sysdream/ligolo

<iframe src="https://github.com/sysdream/ligolo" width="100%" height="1300"></iframe>