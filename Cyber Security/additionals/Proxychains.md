ProxyChains and Tor can be used to chain many proxies and provide anonymity, making it more challenging to track down your actual IP address. As a result, ProxyChains hides your genuine IP address by using many proxy servers. Remember that the more proxies you use, the slower your Internet connection will become.

## What is Proxychains?

proxychains is open source software for Linux systems and comes pre-installed with Kali Linux, the tool redirects TCP connections through proxies like TOR, SOCKS4, SOCKS5, and HTTP (S) and it allows us to chain proxy servers. With proxychains, we can hide the IP address of the source traffic and evade IDS and firewalls.

## Installing Tor & Proxychains in Linux

First, update the Linux system with the patches and the latest applications. For this we open a terminal and type:

```bash
sudo apt update && sudo apt upgrade
```

Then check whether Tor and Proxychains are pre-installed or not by simply typing these commands separately :

If they were not installed, type the following command in the terminal:

```bash
sudo apt install proxychains tor -y
```

> Please note that we’re not installing the Tor browser. We’re installing the tor service which is a service that runs locally on your virtual machine or on your operating system and is actually bound to a particular port on local-host. In our case, it’s going to be 9050 and that’s the default with the tor service.

To check Tor service status, type the following command:

**Output:**

![check-tor-status](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fproxy%2Fproxychains%2Fproxychains1.png&w=1920&q=75)

if you see the following output, it means that Tor service is inactive. To start the Tor service, type the following command:

and if you want to stop the Tor service, type the following command:

### Configure Proxychains

First, locate the directory of ProxyChains by using this command :

**Output:**

![locate-proxychains](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fproxy%2Fproxychains%2Fproxychains2.png&w=1920&q=75)

Based on the above Output, we can notice that the ProxyChain config file is located in /etc/.

We need to make some adjustments to ProxyChains configuration files. Open the config file in your favorite text editor like leafpad, vim, or nano.

Here I am using nano editor.

```bash
sudo nano /etc/proxychains.conf
```

![open-proxychains-file](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fproxy%2Fproxychains%2Fproxychains3.png&w=1920&q=75)

The config file is opened. Now you need to comment and comment out some lines to set up the proxy chains.

You’ll notice “#” in the configuration, which stands for bash language comments. You may scroll down and make the adjustments using the arrow keys.

1. Dynamic chain should be removed from the remark comment. All you have to do is to remove a # in front of dynamic\_chain.

![uncomment-dynamic_chain](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fproxy%2Fproxychains%2Fproxychains4.png&w=1920&q=75)

2. Put the comment in front of random\_chain and strict\_chain. Just add # in front of these.

![comment_random_chain_&_strict_chain](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fproxy%2Fproxychains%2Fproxychains5.png&w=1920&q=75)

3. Max times it includes the proxy-DNS uncomment, double-check that it is uncommented. You will avoid any DNS leaks that may reveal your true IP address in this manner.

![uncomment_prox_dns](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fproxy%2Fproxychains%2Fproxychains6.png&w=1080&q=75)

4. Add socks5 127.0.0.1 9050 in the proxy list the last line.

![add-socks5-proxy](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fproxy%2Fproxychains%2Fproxychains7.png&w=828&q=75)

Here socks4 proxy will be already given. You need to add the socks5 proxy as shown above. And finally, save the config file and exit the terminal.

### Usage of ProxyChains

At first, you have to start the Tor service in order to use ProxyChains.

After the tor service is started, you can use ProxyChains for browsing and for anonymous scanning and enumeration. You can also use Nmap or sqlmap tool with ProxyChain for scanning and searching exploits anonymously. It’s great, right?

To utilize ProxyChains, simply type the ProxyChains command in a terminal, followed by the name of the app you want to use. The format is as follows:

```bash
proxychains firefox https://www.google.com
```

To use ProxyChains with Nmap, you can use the following command:

```bash
proxychains nmap www.google.com
```

To use ProxyChains with sqlmap, you can use the following command:

```bash
proxychains python sqlmap.py -u https://www.google.com
```

You can also test for exploits anonymously like this:

```bash
proxychains python sqlmap -u http://www.targetaddress/products.php?product=3
```

Literally, Every TCP reconnaissance tool can be used with ProxyChains.

For the final confirmation of ProxyChains is working properly or not, just go to dnsleaktest.com and check your IP address and DNS leaks.

After running ProxyChains, you will notice that Firefox has been loaded with a different language. Now, let’s perform a DNS leak test by using a command :

```bash
proxychains firefox dnsleaktest.com
```

---