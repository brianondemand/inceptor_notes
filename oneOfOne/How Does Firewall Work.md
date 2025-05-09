## What is Firewall?

A Firewall is a Network Security System that Monitors and Controls the incoming and outgoing network traffic based on the predetermined security rules or more accurately **ACL** i.e **"Access Control List"**. It is like a safety barrier between the secured and trusted Private Network and the untrusted Public Network such as the internet where malicious virus and hackers relentlessly try to get access of our important and personal data.

## How Does Firewall Work?

![firewall-image](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Ffirewall.png&w=3840&q=75)

Firewall resides at the junction or gateway between two networks (i.e Private and Public Network ). Generally, firewall work at **Layer 3** and **Layer 4** of OSI model (i.e Network and Transport Layer respectively ). It examines all the incoming and outgoing traffic and blocks those that do not meet the criteria of the specified security rules (i.e **ACL**). This rule can be based on a number of things such as:

1. **IP Address**
2. **Domain Names**
3. **Protocols**
4. **Programs**
5. **Ports**
6. **Key words**

etc...

| Rule | Action | Src Address | Dest Address | Protocol | Dest port |
| --- | --- | --- | --- | --- | --- |
| **1** | allow | 173.17.0.0/16 | 11.2.0.0/16 | TCP | 80 |
| **2** | allow | 11.2.0.0/16 | 173.17.0.0/16 | TCP | \> 1023 |
| **3** | allow | 173.17.0.0/16 | 11.2.0.0/16 | UDP | 53 |
| **4** | allow | 11.2.0.0/16 | 173.17.0.0/16 | UDP | \> 1023 |
| **5** | deny | all | all | all | all |

Firewall has been the first line of defence in network security for over 25 years now. It filters the incoming traffic by the rules that is configured and customized by the Network Administrator. He decides what comes in and what goes out of the internal network. So it is a very important job. It is essential for homes and small businesses to have a strong configured firewall on their system. It is more important specially for the big organizations as there are a lot more servers and computers are attached with it and firewall keeps them safe by blocking or denying the malicious traffic.

## Types of Firewall:

Firewall either can be Hardware, Software or BOTH depending on their structure. Each type of firewall has different functionality but the same purpose.

### Hardware Firewall

![hardware-firewall](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fhardware-firewall.png&w=3840&q=75)

A hardware firewall is either a dedicated stand-alone hardware device or it comes as a part of a router. It is physical device that attaches between a computer network and a gateway. For example:- a broadband router. The network traffic is filtered using the packet filtering technique. It is used to filter out the network traffic for large business networks.

### Software Firewall

A Software firewall is a software program installed on a computer, just like normal software. It is generally used to filter for individual home users or small business. It only filter traffic for the computer on which it's installed, not for the network.

![software-firewall](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fsoftware-firewall.png&w=3840&q=75)

Besides, there are many other types of firewalls depending on their features and the level of security they provide. The following are types of firewall techniques that can be implemented as software or hardware:

- Packet-filtering Firewalls
- Circuit-level Gateways
- Application-level Gateways (Proxy Firewalls)
- Stateful Multi-layer Inspection (SMLI) Firewalls
- Next-generation Firewalls (NGFW)
- Threat-focused NGFW
- Network Address Translation (NAT) Firewalls
- Cloud Firewalls
- Unified Threat Management (UTM) Firewalls

#### Packet-filtering Firewalls

![packet-filtering-firewall](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fpacket-filtering-firewall.png&w=3840&q=75)

Packet filtering firewalls work at the Network layer of the OSI model. They are usually a part of the router. In a packet filtering firewall, each packet is compared to a set of criteria before it is forwarded. Depending on the packet and the criteria, the firewall can drop a packet or forward it, or send a message to the originator. We have already talked about the **ACL** in the "How does firewall work?" section of this article.

#### Circuit-level Gateways

Circuit-level Gateways work at the 5th layer or Session layer of the OSI model or more specifically TCP layer of the TCP/IP. Information passed to a remote computer through a circuit-level gateway appears to have originated from the gateway. They monitor requests to create sessions, and determine if the sessions will be allowed. Circuit proxy firewalls allow or prevent data streams; they do not filter individual packets.

#### Application-level Gateways (Proxy Firewalls)

Application-level Gateways (proxies) can filter packets at the 7th layer or Application Layer of the OSI model. Incoming and outgoing traffic is restricted to services by proxy; all other service requests are denied. Application-level Gateways configured as a web proxy prohibit FTP, gopher, telnet or other traffic. It examines traffic and filter on application-specific commands such as http:post and get.

#### Stateful Multi-layer Inspection (SMLI) Firewalls

Stateful Multi-layer Inspection Firewalls combine the aspect of the other three types of firewalls (i.e Packet Filtering, Circuit level Gateways and Application-level firewall). They filter packet at the network layer of the OSI model to determine whether session packets are legitimate, and they evaluate the contents of packets at the application layer. In most cases, SMLI firewalls are implemented as additional security levels. These types of firewalls implement more checks and are considered more secure than stateless firewalls. This is why stateful packet inspection is implemented along with many other firewalls to track statistics for all internal traffic.

#### Next-generation Firewalls (NGFW)

Firewalls have evolved beyond simple packet filtering and stateful inspection. Most companies are deploying next-generation firewalls to block modern threats such as advanced malware and application-layer attacks.

According to Gartner, Inc's definition, a next-generation firewall must include:

- Standard firewall capabilities like stateful inspection
- Integrated intrusion prevention
- Application awareness and control to see and block risky apps
- Upgrade paths to include future information feeds
- Techniques to address evolving security threats

While these capabilities are increasingly becoming the standard for most companies, NGFWs can do more.

#### Threat-focused NGFW

According to CISCO, these firewalls include all the capabilities of a traditional NGFW and also provide advanced threat detection and remediation. With a threat-focused one can:

- Know which assets are most at risk with complete context awareness.
- Quickly react to attacks with intelligent security automation that sets policies and hardness one's defenses dynamically.
- Better detect evasive or suspicious activity with network and endpoint event correlation.
- Greatly decrease the time from detection to cleanup with retrospective security that continuously monitors for suspicious activity and behavior even after initial inspection
- Ease administration and reduve complexity with unified policies that protect across the entire attack continuum.

#### Network Address Translation (NAT) Firewalls

Network Address Translation separates IP addresses into two sets and enables the LAN to use these addresses for internal and external traffic respectively. It also works with router, the same filtering does. NAT will also modify the packets the router sends at the same time. It has ability to change the address of the packet and make it appear to have from a valid address. It limits the number of public IP address and organization can use.

Network address translation or NAT firewalls are primarily designed to access internet traffic and block all unwanted connections. These types of firewalls usually hide the IP address of our devices, making it safe from attackers. When multiple devices are used to connect to the Internet, NAT firewalls create a unique IP address and hide individual devices' IP addresses. As a result a single IP address is used for all devices. By doing this NAT firewalls secure independent network addresses from attackers scanning a network for accessing IP addresses. This results in enhanced protection against suspicious activities and attacks.

#### Cloud Firewalls

As the name implies, a cloud firewall that is hosted in the cloud. The most significant advantage of cloud firewalls is scalability. Because cloud firewalls have no physical resources, they are easy to scale according to the organization's demand or traffic-load. If demand increases, additional capacity can be added to the cloud server to filter out the additional traffic load. It is also known as Faas or Firewall-as-a-Service.

Cloud firewalls block cyber attacks directed at the cloud platforms and infrastructure. Cloud based firewalls from a virtual barrier around cloud platforms, infrastructure, and applications, just as traditional firewalls form a barrier around an organizations intrenal network. Deploying a cloud firewall is like replacing a bank's local security cameras and physical security guard with a global 24/7 security center that has centralized staff and security camera feeds from all the placess where a bank's assets are stored.

#### Unified Threat Management (UTM) Firewalls

A UTM device typically combines, in a loosely coupled way, the functions of a stateful inspection firewall with intrusion prevention and antivirus. It may also include additional services and often cloud management. UTMs focus on simplicity and ease of use.

Firewall Limitations:

1. A firewall does not prevent the network from new viruses, backdoor and insider attacks.
2. A firewall cannot do anything if the network design and configuration is faulty.
3. A Firewall is not an alternative to antivirus or anti-malware.
4. They can not prevent social engineering threats.
5. A firewall does not prevent password misuse.
6. A Firewall does not block attacks from a higher level of the protocol stack.
7. A firewall does not protect against attacks from dial-in connections and attacks originating from common ports or applications.
8. They are unable to understand tunneled traffic.

## Conclusion

Although Firewall has some limitations but it is vital and essential part of the network Security irrespective of home, small or big organizations in question. It protects the important secret data from the outside threat. So, everyone should have a Firewall configured on their system.