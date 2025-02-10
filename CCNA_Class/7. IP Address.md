## What is an IP

An IP address stands for **"Internet Protocol Address"**, which is a set of rules for communication over the internet, such as sending mail, streaming video, or connecting to website. **An IP address identifies a network or device on the internet**.

Internet Protocol Address mainly refers to a numbering scheme, providing a highly unique number to every machine connected to the internet. (Internet protocols do other things as well, such as routing internet traffic). This way, it's easy to see which devices on the internet are sending, requesting and receiving what information.

Moreover, these IP addresses part the **NETWORK LAYER** of the **OSI Model**, whose main purpose is to navigate the transmitted data between the source and destination.

IP addresses are like telephone numbers, and they serve the same purpose. When you contact someone, your phone number identifies who you are, and it assures the person who answers the phone that you are who you say you are. IP addresses do the exact same thing when you're online -- that's why **every single device that is connected to the internet has an IP address**.

## Types of IP Address Versions

Currently, there are two versions of IP addresses being used: IPv4 and IPv6.

### IPv4 Address

IPv4 stands for internet protocol version 4. This is the one you will see used the most. These addresses are **32-bit long** and divided into **four parts** known as **octets**, each octet containing **8 bit**. This protocol has been around **since 1981** and has not seen many changes since. Despite it having **4,294,967,296** possible IP addresses, we are still running out of them to use.

![ipv4-address](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fipv4-address.png&w=3840&q=75)

### IPv6 Address

With the rapid expansion of the internet, there is a global shortage of IPv4 addresses. To combat this, [**Internet Engineering Task Force (IETF)**](https://www.ietf.org/about/who/) has developed IPv6, the most recent version of the internet protocol, intended to replace IPv4. It uses a **128-bit** addressing system, allowing for approximately 3.4x10<sup>38</sup> addresses. The actual number is a bit lower as some IPs are reserved for special use.

IPv6 address is expressed by **eight groups of hexadecimal (base16)** numbers separated by colons. Groups of numbers that contain all zeros are often omitted to save space, leaving a colon separator to mark the gap.

![ipv6-address](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fipv6-address.png&w=3840&q=75)

Here are some of the main advantages IPv6 provides:

-   Faster routing
-   Better end-to-end connectivity
-   Easier administration
-   Improved mobility features
-   Superior Multicast and Anycast abilities
-   More security for applications and networks

## The parts of your IP address

![parts-of-ip-address](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fparts-of-ip-address.png&w=3840&q=75)

An IP address has two parts: the **network ID**, comprising the first three number of the address, and a **host ID**, the fourth number in the address. So on your home network -- `192.168.1.1`, for example - `192.168.1` is the network ID, and the final number is the host ID.

The **Network ID** indicates which network the device is on. The **Host ID** refers to the specific device on that network. (Usually your router is `.1`, and each subsequent device gets assigned `.2`, `.3`, and so on).

## Where do IP addresses come from?

IPv4 dates back to the early 1980s, when the internet was a private network for the military. IPv4 has a total pool of 4.3 billion addresses, which sounds like lot. But with all the computers, smartphones, and tablets that connect to the internet, not to mentions **IOT devices**, we have run out of IPv4 addresses. In fact, we began running out in the 1990s. Very clever technical networking tricks have kept things going.

The **Internet Engineering Task Force (IETF)**, which designs the backbone technologies of the internet, came up with IPv6 about a decade ago. It has a potential pool of 340 undecillion followed by 36 zeroes -- meaning we can (in theory) never run out of addresses. It is slowly replacing IPv4, but for now, the two co-exist.

## Types of IP addresses

There are different categories of IP addresses, and within each category. different types.

### Consumer IP addresses

Every Individual or business with an internet service plan will have two types of IP addresses:- their private IP addresses and their public IP address. The terms public and private relate to the network location -- that is a private IP address is used inside a network while a public one is used outside a network.

![public-and-private-ip](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fpublic-and-private-ip.png&w=3840&q=75)

#### Private IP addresses

Every device that connects to your internet network has a private IP address. This includes computers, smartphones, and tablets but also any Bluetooth internet of things, the number of private IP addresses you have at home is probably growing. Your router needs a way to identify these items separately, and many items need a way to recognize each other. Therefore, your router generates private IP addresses that are unique identifiers for each device that differentiate them on the network.

#### Public IP addresses

A public IP address is the primary address associated with your whole network. While each connected device has it own IP address, they are also included within the main IP address for your network. As described above, your public IP address is provided to your router by your ISP. Typically ISPs have a large pool of IP addresses that they distribute to their customers. Your public IP address that all the devices outside your internet network will use to recognize your network.

## How IP address assigned: Dynamic vs. Static

IP addresses can be permanent (static) or temporary (dynamic).

### Dynamic IP addresses

Dynamic IP addresses change automatically and regularly. ISPs buy a large pool of IP addresses and assign them automatically to their customers. Periodically, they re-assign them and put the older IP addresses back into the pool to be used for other customers. The rationale for this approach is to generate cost savings for the ISP. Automating the regular movement of IP addresses means they don't have to carry out specific actions to re-establish a customer's IP address if they move home, for example. There are security benefits, too, because a changing IP address makes it harder for criminals to hack into your network interface.

### Static IP addresses

In contrast to dynamic IP addresses, static addresses remain consistent. Once the network assigns an IP address, it remains the same. Most individuals and businesses do not need a static IP address, but for businesses that plan to host their own server, it is crucial to have one. This is because a static IP address ensures that websites and email addresses tied to it will have a consistent IP address -- vital if you want other devices to be able to find them consistently on the web.