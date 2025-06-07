
Ethical Hacking is considered to be the bright side of Hacking because it is used for the purpose of making the Security better. But even if Ethical Hacking is legal, it is not completely safe for an Ethical Hacker, and hence, Anonymity is like a shield. In this article, I will tell you why Anonymity is important for an Ethical Hacker and how one can increase their Anonymity.

These are the topics I will be covering in this article:

- Why is Anonymity important for Ethical Hacking?
- Proxychains for Anonymity
- Anonsurf for Anonymity
- MacChanger for Anonymity

## Why is Anonymity important for Ethical Hacking?

> “Why should I be anonymous while Ethically Hacking?

This is a common question I have been asked when I tell someone about being anonymous for Ethical Hacking. The answer to this is, “Because you are not alone”.

Let me explain this in brief. If you are an Ethical Hacker, then the organization has given you permission and due to this, you might think that you are not in trouble. But keep in mind that while you are trying to find a **vulnerability**, there might be some **other hacker** in the network. And to protect yourself from that hacker, you need to be Anonymous.

You never know who else is in the same network that you are in. And if a **Black hat hacker** finds that there is someone else in the network, then he might try to **hack your system**. This is why Anonymity is important even for Ethical Hackers.

Now, that you know why Anonymity is necessary, let’s see how you can be anonymous. I will discuss 3 ways to protect your identity using Anonsurf, Proxychains, and MacChanger for ethical hacking.

## Proxychains for Anonymity

Before understanding about Proxychains for ethical hacking, let me tell you what Proxies are. Do you know what happens when you request a server for some web page? The request is sent from your system to the server. The server processes the request and responds with the data that you requested for. And then, this response is sent to your system.

Well, how do you think the server identifies your system? Through your IP address!

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*5dS6EhZagE_LT4V5pH7MBg.png)

The IP address can be used to identify the hacker’s system and the proxy is a way to avoid this. A proxy redirects the requests from your system to the main server through the proxy server. Using this, the IP address of your system is hidden because the request made to the main server is through the proxy server.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*x9AFKV0mvkMDWJSNHF-U8A.png)

When you use Proxychain for ethical hacking, instead of one proxy server, your request gets redirected through multiple proxy servers. This makes tracing back the IP difficult. Now that you know what Proxychains are, let’s see how to use Proxychain for ethical hacking.

To install Proxychain, open the terminal and run the following command:

`$ sudo apt-get install proxychains`

Next, you need to make some changes in the configuration file. Open the **proxychains.conf** file.

`$ sudo nano /etc/proxychains.conf`

In this file, by default, the line **dynamic\_chain** is commented and the line **strict\_chain** is not commented. Remove the comment from **dynamic\_chain** and comment out **strict\_chain.** This is to make Proxychain work even if few proxy servers are not online.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*X8N7LAY6B-q0YrPC1LrIBg.png)

To make Proxychain for ethical hacking more effective, let us add some more proxy servers. Scroll down to the end of the file and you will see a default proxy server. Add the following lines at the end of the file:

```hs
socks4 36.66.210.159 44034
socks4 182.52.51.19 32591
socks4 167.249.78.22 4145
socks4 91.195.158.171 4145
socks4 45.4.255.168 4145
socks4 31.145.166.28 4145
```
![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*-_BlProjimsNQyIw4iwhBQ.png)

I suggest you add more such proxy servers. You’ll find the details of proxy servers with a simple “ **proxy server list** ” search on the internet.

Save (Ctrl+O) and exit (Ctrl+X) the file.

Before using Proxychain, check if your IP address is traceable. To check this, open any Internet Browser and open the following URL: [https://www.dnsleaktest.com.](https://www.dnsleaktest.com/) This website will display your IP address. Close the browser. Now let’s try Proxychain.

The syntax to run proxychain is: `$ proxychains <application/command>`

Let’s run Proxychain and see if it works. Open the terminal and run the following command:

`$ proxychains firefox [www.dnsleaktest.com](http://www.dnsleaktest.com/)`

You can now see that the IP address has changed.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*a4dzZUVB-v9wKlR_0CgGiw.png)

Now, click on **Standard Test.** If the proxy servers you are using are online, then you will be shown different IP addresses that hide your actual IP address.

Proxychain is a great way to hide the IP address. But it is not enough. To add another layer of anonymity, you can use Anonsurf.

## Anonsurf for Anonymity

Anonsurf is a tool that will help you stay anonymous by routing every packet through TOR relay. When you use Anonsurf for ethical hacking, all the traffic from your system goes through a TOR proxy server due to which your IP address is changed.

Now let’s see how to install and use Anonsurf for ethical hacking on Ubuntu.

To download Anonsurf, run the below command in the terminal:

`$ git clone [https://github.com/Und3rf10w/kali-anonsurf.git](https://github.com/Und3rf10w/kali-anonsurf.git)`

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*S2z6-7DGX8ODyZ_44nayuA.png)

Next, you will have to install Anonsurf. To do this, run the following commands in the terminal:

`$ cd kali-anonsurf/`

`$ ./installer.sh`

Now that Anonsurf is installed, let’s see how it works. But before that, let’s check if your IP is traceable. To check this, open any internet browser and open the following URL: [https://www.dnsleaktest.com](https://www.dnsleaktest.com/)

This website will display your IP address. Now close the browser and run Anonsurf.

To start Anonsurf, run the below command in the terminal:

`$ anonsurf start`

Now, open the browser again and goto [https://www.dnsleaktest.com](https://www.dnsleaktest.com/). You will see that your IP address is changed. This means that the traffic from your system is being routed through another server.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*EQ5qfkItBXXp2qAgRyNOOg.png)

To know about other options of Anonsurf for ethical hacking, run the following command in the terminal:

`$ anonsurf`

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*XGlMuD5SiJxekxNmgtYKYw.png)

Anonsurf and Proxychains help you hide your IP address. But is hiding the IP address enough? Not at all! The next level of Anonymity can be achieved by changing the MAC address.

## MacChanger for Anonymity

Every device has a unique MAC address assigned to it by the manufacturer. This MAC address is stored in the router’s table when you are connected to it. Because the MAC address is unique to every device, it can be used to identify the system/ device that was used by the hacker, which might result in revealing your identity.

To avoid getting identified by your MAC address, you can temporarily change it. This is where you can use MacChanger for ethical hacking. MacChanger is a tool that will change the MAC address of a device to a fake MAC address until the device is rebooted.

To install MacChanger, run the below command in your terminal:

`$ sudo apt install macchanger`

Now, let me tell you how you can change the MAC address of a network device.

To check which devices are available on your system, run the below command in your terminal:

`$ ifconfig`

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*kGhYZ2CWb3C3M2k1a2altg.png)

Look at the MAC address of the interface **ens33**, I will be changing this to some random MAC address. To change the MAC address, I will run the following command in the terminal:

`$ sudo macchanger -r ens33`

**Note:** You might have different interfaces on your system, make the changes in the above command accordingly.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*sVV9rzfOq62nk6icZjtF_w.png)

You can see that the MAC address has been changed. MacChanger is a simple, but important tool to hide the hacker’s identity.

You have learned 3 ways to maintain your anonymity. There are many such tools hackers use to keep themselves anonymous. I suggest you research more on how else you can increase your anonymity.

---