## Introduction

On the internet, your IP address is like your digital home address. Every connection you make leaves a trace. For security professionals, exposing your real IP during reconnaissance or testing can alert defenders or lead back to you. Anonymity layers help obscure this origin point.

> **Disclaimer**: Use these tools **ethically** and **legally**. Anonymity tools are for legitimate privacy, research, and authorized security testing only. Illegal use has consequences.

## Tor: The Onion Router

Tor helps keep you anonymous online. It sends your internet traffic through several volunteer computers using layers of encryption. This hides your real IP address, making it hard for websites to know where you are or track what you do.

## Proxychains

Proxychains is a tool that forces almost any program on your computer to send its traffic through a proxy server (or even multiple proxies in a row). It’s handy because it works even with apps that weren’t designed to use proxies, helping you route their connections differently, like through Tor.

## Step 1: Get the Tools & Start Tor

These commands update your system, install Tor, start the Tor service, and set it to automatically run every time you boot up your computer.

```c
# Update package lists
sudo apt update && upgrade -y

# Install Tor (if not already installed)
sudo apt install tor -y

# Start the Tor service
sudo systemctl start tor

# Check the status (optional)
sudo systemctl status tor

# Enable Tor to start on boot (optional)
sudo systemctl enable tor
```

Proxychains is usually default on Kali, but if it’s not on your system, install it easily. Then, verify the installation by checking its version. If you see a version number displayed, Proxychains is installed and ready to go.

```c
# Update lists and install proxychains4
sudo apt install proxychains4 -y

# Check proxychains4 version
proxychains4 --version
```

## Step 2: Configure Proxychains to Use Tor

With Proxychains installed and the Tor service running, the next crucial step is to tell Proxychains how to route traffic — specifically, through the local SOCKS proxy that Tor provides. This involves editing the main configuration file.

First, open the configuration file using a text editor like `nano` with administrative privileges:

```c
# Edit the Proxychains configuration file using the nano text editor
sudo nano /etc/proxychains4.conf
```

Inside this file, you need to adjust a few settings:

- **Use** `**dynamic_chain**`**:** Look for lines near the top starting with `dynamic_chain`, `strict_chain`, etc. Make sure the `#` symbol is **removed** from the front of the `dynamic_chain` line. Make sure the other chain lines (`strict_chain`, `random_chain`) **do** have a `#` at the beginning. This makes Proxychains flexible.
  
- **Turn on** `**proxy_dns**`**:** Find the line that just says `proxy_dns`. Make sure the `#` symbol is **removed** from the start of this line. This is important to help hide your real IP address when websites are looked up.
  
- **Tell it to Use Tor:** Go all the way to the bottom of the file, below where it says `[ProxyList]`. If there are any example lines there (like `socks4 127.0.0.1 9050`), put a `#` at the very beginning of those lines to ignore them. Then, add this **new line** exactly as shown: `socks5 127.0.0.1 9050`

After making these adjustments, save the file and exit the `nano` editor by pressing `Ctrl+X`, followed by `Y` to confirm saving, and then `Enter`. Proxychains is now configured to route traffic through Tor.

This shows `dynamic_chain` active, `proxy_dns` active, and only the Tor `socks5` proxy active in the list.

```c
# Essential settings in /etc/proxychains4.conf for Tor

# Make sure dynamic_chain is uncommented:
dynamic_chain
# strict_chain
# random_chain

# ...................

# Make sure proxy_dns is uncommented to prevent DNS leaks
proxy_dns

# ...................

# [ProxyList]
# socks5  127.0.0.1 9050
socks5  127.0.0.1 9050
```

## Step 3: Use It!

To run a program through your Tor setup, just add `proxychains4` before its command. This works best for TCP traffic.

```c
# Check your IP address via Tor
proxychains4 curl ipinfo.io/ip

# Run Firefox browser via Tor
proxychains4 firefox
```

After launching an app like Firefox, visit `dnsleaktest.com` or an IP-checking site *within that browser window* to ensure you're using a Tor IP and not leaking DNS info.

**Quick Tip:** Need a new IP? Just restart Tor.

```c
# Restart Tor for a new circuit/IP
sudo systemctl restart tor

# sets the interval to 3 seconds, and 
# count 0 means there's no limit on how many times the IP will change
sudo tornet --interval 3 --count 0
```


---
