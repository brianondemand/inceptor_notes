
You may have heard about the Access Control List or ACL. It is used to control permissions to a computer system or network, but do you know what is Access control list?

As we know, the Internet is a network of networks, and routers play a vital role in having connectivity between different networks. Routers are used in industries, universities, businesses, corporate offices, schools, colleges, etc., to connect their different branches from different locations. As a router sends traffic from one network to another, sometimes we need to monitor and control this traffic for security purposes.

So, we use ACLs, i.e., Access Control List, to control and monitor this traffic. So, let’s understand what is Access control list.

## What is Network Access Control List (ACL)?

Access Control List (ACL) is a list of rules defined for controlling network traffic to reduce network attacks. Using a set of rules specified for the network’s incoming or outgoing traffic, ACLs filter this traffic.

Using an ACL is primarily intended to secure your network. Without it, any traffic is allowed to either enter or exit the network. Access control lists are employed on computer networks to forbid or permit particular network traffic. They filter the traffic on the basis of the traffic’s origin and destination.

In the current times, Network interfaces and operating systems, like Linux and Windows, are also equipped with ACLs. A user or group of users’ names make up one or more access control entries (ACEs) that are contained within each ACL.

The access privileges are specified for each user, group, or role in a string of bits known as an access mask. The person who creates the access control list for an item is often the system administrator or the object owner.

## Why ACL is Important?

The primary reason why ACL is considered important is security. As we discussed, ACLs filter traffic based on predefined rules, helping protect the network from unauthorized access, malicious activity, and even network congestion by blocking unnecessary traffic.

It also enables administrators to have total control over the flow of data in a network, ensuring that sensitive information is safeguarded.

## How does ACL in Networking Works?

Access Control List provides a flexible way to manage various access rights by allowing network administrators to manage access of various people or groups. Here’s how it typically works –

1. **Identification** – The process starts when a user attempts to access a resource. The system tries to identify the user by their username, membership or other parameters set by network administrators.
2. **Evaluation** – In the next step, the system checks the ACLs associated with the resource which is being accessed.
3. **Matching** – Next, the system tries to match the user’s identity to the entries in the ACL. It starts from the top of the list and keep going to bottom, checking every entry until it finds a matching entry.
4. **Check Permissions** – If a match is found, then system checks for the permission allowed or denied to that user in the matching entry. These permissions can include write, read, execute, delete, etc.
5. **Access Decision** – After checking the permissions, system will determine whether to provide access to the user or deny it to the requested resource/resources. If access is granted, user can access or perform the allowed tasks. However, if access is denied, user will be stuck with an error message.
6. **Default Behaviour** – In access to the process, ACLs also have a default behaviour set by the administrator. If no matching entry is found in the ACL, system might grant access to all authenticated users to a limited resources or else it will decline all access depending on the default behaviour.

This is how ACLs works. They are commonly used in operating systems, network devices, databases, etc to enforce security policies and protect sensitive information from unauthorized access.

## How to implement Access Control List?

First, you need to know how traffic moves in and out of the router to enforce ACLs and set rules according to the router’s interface, as it is separate from the network. For example, traffic going into a router means it is going out of the web, so it isn’t easy to understand how the traffic motion is mentioned.

Setting an ACL requires the ACL to perform its intended function on the router’s interface. To create a faster process, the router’s hardware implements forwarding and routing decisions.

When setting up an ACL entry, enter the source address and the destination address as the router reads the entry if it is represented in this format. Source means where the traffic comes from, i.e. outside the router, and destination is a station beyond the router, where the data packet will terminate.

## Components of Access Control List

Access Control Lists consists of several components to carry out its operations. Here are some common components of Access Control List –

- **Sequence Number** – The object’s identification in the ACL entry is revealed by the sequence number.
- **Protocols** – Network Protocols gives administrators the ability to accept or reject traffic based on a network protocol, such as IP, TCP, UDP, etc.
- **ACL Name** – This doesn’t use numbers and identifies ACL by its name. There are some ACLs that allow both numbers and names.
- **Comments** – Comments allow users to add comments to some ACLs, which serve as an extra description of that ACL.
- **Source and Destination** – This specifies a particular IP address to block or allow, as well as an address range.
- **Log** – Some ACL devices keep a log of data that it recognizes.

These are some common ACL components.

## What is the purpose of ACL in Networking?

ACLs or Access control Lists can be used for two purposes, namely:

1. To filter traffic
2. To identify traffic

As mentioned above, access lists are a set of rules organized in a rule table. A condition, either permit or deny, is provided by each rule or line in an access list.

- When an access list is used to filter the traffic –
- a permit statement is used to “allow” traffic,
- Whereas, to “block” traffic, a deny statement is used.
- In a similar way, when identifying traffic with an access list –
- a permit statement is used to include traffic
- A deny statement, on the other hand, makes it clear that the traffic should “not” be included.

![ACL](https://www.pynetlabs.com/wp-content/uploads/2022/10/ACL1.png)

We hope you have a better understanding of what is the purpose of the Access control list.

## Where can you place an ACL in your Network?

Access Control Lists are kind of security devices that are used to control access to various network devices. Depending on the situation and the specific network devices or systems involved, it can be installed in a variety of places. The following are some typical locations where an access control list can be placed:

- **Networking Devices** – ACLs are applied to various networking devices such as routers, switches, and firewalls to control the traffic flow based on various conditions applied by network administrators. ACLs are therefore used to increase the security of networks.
  
- **Operating Systems** – ACLs can be used in operating systems to control the access of files, resources, and other directories. ACL will determine which user or group has permissions to which resources and what actions can they take.
  
- **Databases** – ACLs can be used in databases to control who has access to which tables, views, or stored procedures. They specify which users or roles have access to perform database operations such as querying, inserting, updating, and deleting data.
  
- **Web Servers** – ACLs are frequently used by web servers to control access to specific websites or web pages. They can be used to impose access restrictions based on user agents, IP addresses, or other request properties. ACLs support user interaction management and web application security.
  
- **File Systems** – ACLs are supported by file systems on storage devices to control access to files and directories. These ACLs give users and groups more precise control over permissions by allowing some to read, write, or execute files while denying access to others.
  
- **Virtual Private Networks (VPNs)** – ACLs can be used in VPNs to control network resource access. They aid in deciding which external devices or remote users are permitted to connect to the VPN and use internal network services.

These are just a few examples of where access control lists can be placed. The specific implementation and configuration of ACLs may vary depending on the system or technology being used.

## Types of ACL (Access Control List)

Here are the common types of Access Control Lists available –

### 1\. Standard ACL

These Access-lists were created solely utilizing the source IP address. These ACLs either allow or disallow the whole set of protocols. There is no distinguishing between the IP traffic like TCP, UDP, HTTPS, etc. Using numbers 1-99 or 1300-1999; the router will recognize it as a standard ACL and the provided address as the source IP address.

IP standard access list –

- 1–99 (normal range)
- 1300-1999 (Expanded Range)

### 2\. Extended ACL

This ACL makes use of source IP, destination IP, source port, and destination port. With these ACL types, we can also mention which IP traffic should be allowed or denied. These use range from 100-199 and 2000-2699.

IP extended access list –

- 100-199 (normal range)
- 2000-2699 (Expanded Range)

### 3\. Reflexive ACL

Reflexive ACLs are also known as IP connection ACLs. They filter traffic based on the session information from top layers. They enable or disable outbound traffic in response to internal router sessions. Outgoing ACL Traffic is detected by router and a new inbound ACL entry is added.

### 4\. Dynamic ACL

Telnet, extensive ACLs, and authorization are used in dynamic ACLs. This type of ACL, often known as “Lock and Key,” can be used for certain time periods. Such lists only allow users to access resources or endpoints after they have established Telnet authentication with the device.

These are the types of ACL.

### Important rules to understand ACL

- Filtering traffic is the primary use of access lists, so when filtering traffic, access lists are applied on interfaces.  A packet travels through a router, which checks the top line of the rule list first before moving down the list until a match is found.
- Once a match is made, the packet is either permitted or denied.
- All access lists have an implied “deny all” at the end.
- Either inbound (packets received on an interface before routing) or outgoing (packets leaving an interface after routing), access lists are applied.
- Per interface, protocol, and direction, a single access list is permitted.
- In general, standard Access-list is used near the target (but not always).
- Typically, an extended Access-list is used near the source (but not always).
- If we are utilising a numbered Access-list, we are unable to remove a rule from it. The entire ACL will be erased if we attempt to remove a rule. If we use named access lists, we can delete a specific rule.
- Before adopting access lists, thoroughly analyse the entire scenario because every new rule that is added will be placed at the bottom of the access list.
- Since every access list contains an implicit deny at the conclusion, we need to include a permit statement in our Access-list at the very least to avoid blocking all traffic.
- The names of standard and extended access lists must be different.

## Benefits of using Access Control List (ACL) –

There are many benefits of using Access Control Lists (ACLs). Some of these are as follows –

- **Enhanced Security** – ACLs are used to restrict unauthorized access to various data and resources, which enhances the security of the system.
- **Granular Control** – ACL allows administrators to establish access rights for specific files, directories, or network resources, allowing them to set permissions at a more granular level. This allows for more exact control over who can do specific actions or gain access to specified information.
- **Flexibility** – With ACLs, Administrators have the flexibility to define access permissions. ACLs allows for the creation of custom access rules tailored to the specific needs of an organization.
- **Auditing and Accountability** – With ACLs, you can get a detailed record of access attempts and actions taken on various resources. This can help track user activities, security threats and compliance.
- **Scalability** – ACLs are known for their scalability; they are capable of handling large number of users and resources efficiently. So, when an organization grows, they don’t need to find another option.
- **Improved Productivity** – Organisations can use ACL to streamline access control operations and eliminate administrative costs associated with managing permissions. This leads to increased productivity because users may obtain the necessary access rights quickly and simply.

Overall, ACL provides a strong framework for access control, improving security, flexibility, and control over resource access. Organisations can mitigate security risks and protect important assets by deploying ACL, which ensures that only authorised persons have proper access to critical information.

## Disadvantages of Access Control List

Here are some disadvantages of Access Control List –

- ACL is difficult to maintain if a large area or devices have many resources and users.
- It impacts the security of the entire network when its mechanisms become vulnerable and fail.
- ACLs are challenging to scale in changing environments, and adding or modifying entries can be time-consuming and error prone.
- ACL access can consume most of the computational resources during evaluation, affecting system performance, especially in high-traffic environments.
- ACL increases overall management overhead because it requires specialized knowledge and skills to design, implement, and maintain.

## Future of ACL in Networking

ACLs have been around for a long time, but they still play a vital role in modern network security, especially in environments where granular control is preferred over traffic. However, we have technologies like Next-generation Firewalls (NGFWs) and Software-defined Networking (SDN) that provide more advanced alternatives to traditional ACLs.

