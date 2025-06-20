

Shodan is a search engine that discovers devices connected to the internet.

This includes everything from simple webcams and routers to complex industrial control systems.

Traditional search engines index websites. Shodan scans the internet for devices and lists them based on their IP addresses, open ports, and other publicly available data.

Shodan works by scanning the internet using specific protocols to identify connected devices. It collects all information about the device.

These include IP addresses, open ports, and even the software versions in use. This data is then made searchable by allowing users to query the database. You can look for specific types of devices or vulnerabilities using Shodan’s UI or the CLI tool.

----
### What is `robots.txt`

`robots.txt` is a **text file** used by websites to guide search engine crawlers (like Googlebot) on which pages or directories they should **not** index. It is part of the **Robots Exclusion Protocol (REP)**.

 **Where is `robots.txt` found?**

It is usually located in the root directory of a website:

```
https://example.com/robots.txt
```

 **Example of a `robots.txt` File:**

```txt
User-agent: *
Disallow: /admin
Disallow: /private
Disallow: /backup
```

- `User-agent: *` → Applies to all search engine bots.
- `Disallow: /admin` → Prevents bots from indexing the `/admin` directory.

 **Why is `robots.txt` Important?**

- Helps **control search engine behaviour** (but not a security measure).
- Can unintentionally expose **sensitive directories** if misconfigured.

---

### How to Use the Shodan Web Interface

Go to shodan.io and create an account. While some searches are possible without an account, you’ll need to log in to access most features.

Also, you will need a premium account to find most devices, and the results of the free plan are very limited.

![][https://cdn.hashnode.com/res/hashnode/image/upload/v1726210817675/e3c7f492-7b0d-4914-be7a-6cf8dc26524a.png]

---

On the homepage, you will see a simple search bar. You can type in general queries like “default password” or “webcam” to see what Shodan can find.

For example, typing “default password” will list devices with default settings. They are vulnerable to unauthorized access.

Shodan also allows you to filter results with specific parameters. For example:

- **Search for specific devices**: If you’re looking for webcams, you might type “webcam country:US”. This query will return webcams located in the United States.
    
- **Search by IP address:** To see details about a specific IP, type the IP address into the search bar.
    
- **Search by port:** To find devices with a specific port open, use a query like “port:22”. This will find devices with SSH (port 22) exposed to the Internet.
    

After executing a search, Shodan will present a list of matching devices. Each result includes the IP address, open ports, and the software on the device.

For example, a search for “port:22” might find SSH servers and their configuration details.

![][https://cdn.hashnode.com/res/hashnode/image/upload/v1726210856807/253a6a4c-e418-4a8f-ad3d-553a4a339686.png]

---

### How to Use the Shodan Command-Line Interface (CLI)

For advanced users, Shodan provides a command-line interface (CLI). It lets you search and automate tasks.

**Note: API usage may be limited based on your account and you might have to pay to use it.**

Before you can use the CLI, you will need to install it. You can do this using Python’s package manager, pip. Open your terminal and type the following.

```bash
pip install shodan
```

Once installed, you can see if it works by trying the help command.

```bash
shodan -h
```


Now you have to add your Shodan CLI with your API key.

```plaintext
shodan init YOUR_API_KEY
```

Now you can start searching. Here’s an example of a basic search:

```plaintext
shodan search "default password"
```

This command will return devices with “default password” in their banners. This often indicates poor security practices.

You can search for devices with specific characteristics as before:

```plaintext
shodan search "port:80 country:US"
```

This command finds web servers (port 80) located in the United States.

To get detailed information about a specific IP address, use this command:

```plaintext
shodan host 8.8.8.8
```

It will return all known data about the specified IP. This includes open ports and detected services.