
## What is `WhatWeb`?

`WhatWeb` is an open-source tool designed to identify various technologies used by a website. By running `WhatWeb` against a target URL, it will enumerate and provide details about:

- **Web server** software (e.g., Apache, Nginx, IIS)
- **CMS** (Content Management System) such as WordPress, Joomla, or Drupal
- **Programming languages** in use (e.g., PHP, Ruby, Python)
- **Web frameworks** (e.g., React, Django, Laravel)
- **Libraries and APIs** (e.g., jQuery, Bootstrap, Google Maps)
- **Security features** (e.g., SSL/TLS, security headers)
- **Plugins and server-side components**

The tool essentially works by analyzing the HTTP headers, the response body, and other web-related signals to provide a comprehensive report.

## Installing `WhatWeb` on Linux

Before you can use `WhatWeb`, you need to install it on your Linux system. The installation process is simple and can be done in a few steps:

 **1\. Install via Package Manager (Debian/Ubuntu)**

If you’re using a Debian-based distribution like **Ubuntu** or **Kali Linux**, you can install `WhatWeb` from the package manager:

```
sudo apt update
sudo apt install whatweb
```

**2\. Install via Git (For Latest Version)**

If you prefer the latest version of `WhatWeb`, you can clone it from the official GitHub repository and build it manually. Here's how you can do it:

```
sudo apt update
sudo apt install git ruby
```
```
# Clone the repository
git clone https://github.com/urbanadventurer/WhatWeb.git# Change to the WhatWeb directory
cd WhatWeb# Run the script
ruby whatweb
```

This will give you access to the latest features and updates directly from the source.

**Usage of `WhatWeb`**

Once installed, you can begin using `WhatWeb` to analyze websites. The basic syntax for running `WhatWeb` is:

```
whatweb [options] [URL]
```

Here’s a look at some useful commands and options.

 **1\. Basic Website Analysis**

The simplest way to use `WhatWeb` is to provide it with the URL of a website you want to analyze. For example:

```
whatweb https://www.example.com
```

This will return a list of technologies that `WhatWeb` detects on the target website. You’ll see information like the server type (Apache, Nginx, etc.), CMS (WordPress, Joomla, etc.), JavaScript frameworks, and more.

**2\. Output Results to a File**

If you want to save the results for later analysis or reporting, you can output the results to a file using the `-o` flag:

```
whatweb https://www.example.com -o output.txt
```

This will save the results in `output.txt` in the current directory.

**3\. Aggressive Mode**

To get more detailed and accurate information, you can use the `--aggressive` option. This enables deeper probing of the website, identifying more technologies and services:

```
whatweb --aggressive https://www.example.com
```

Aggressive mode will attempt to retrieve more information by making additional requests and analyzing various site components.

 **4\. Verbose Mode**

If you want more detailed output with information about each detection, you can enable verbose mode with the `-v` flag:

```
whatweb -v https://www.example.com
```

Verbose mode provides extra details about what `WhatWeb` has detected and how it arrived at its conclusions.

 **5\. Use a Specific Plugin**

`WhatWeb` comes with a range of plugins that help in detecting specific technologies. For example, if you're interested in detecting WordPress sites, you can use the `-p` option followed by the plugin name:

```
whatweb -p wordpress https://www.example.com
```

You can also list available plugins and see which ones are installed:

```
whatweb --plugins
```

This will show all plugins available for the analysis.

 **6\. Scan Multiple URLs**

If you want to scan multiple websites or URLs at once, you can provide a list of targets in a text file and use the `-i` option to read them:

```
whatweb -i targets.txt
```

Where `targets.txt` contains the URLs you want to analyze, one per line.

 **7\. Check Specific Headers**

If you only want to analyze specific HTTP headers from a website, you can use the `--headers` option:

```
whatweb --headers https://www.example.com
```

This option will help you understand the HTTP headers the site is sending, which can be useful for security analysis.

 Advanced Usage of `WhatWeb`

 **1\. Scan Using a Proxy**

You can scan websites using a proxy server with the `--proxy` option. This can be useful if you want to hide your IP address or route your requests through a different location:

```
whatweb --proxy http://127.0.0.1:8080 https://www.example.com
```

Make sure your proxy server is running before using this command.

**2\. Use Custom User-Agent Strings**

You can specify a custom **User-Agent** string with the `--ua` option. This is useful if you're trying to simulate requests from different browsers or devices:

```
whatweb --ua "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" https://www.example.com
```

 **3\. Perform a Fingerprint Search**

If you have a specific technology fingerprint you want to search for, use the `--fingerprint` option. This will allow `WhatWeb` to search for a particular technology even if it’s not immediately obvious:

```
whatweb --fingerprint "Technology Name" https://www.example.com
```

 Interpreting the Results

When `WhatWeb` completes its scan, it will return a list of technologies, services, and features it has detected on the website. Here's an example output:

```
https://www.example.com [Apache/2.4.41 (Ubuntu)] [WordPress/5.6] [jQuery/3.5.1]
```

- **Apache/2.4.41 (Ubuntu)**: The website is hosted on an Apache server running on Ubuntu.
- **WordPress/5.6**: The site is powered by WordPress version 5.6.
- **jQuery/3.5.1**: The website uses the jQuery JavaScript library, version 3.5.1.

The results will often provide key details about the server-side technologies, security features, and frontend libraries used, which can be valuable for security assessments or competitive analysis.

**Conclusion**

`WhatWeb` is an extremely useful tool for gathering detailed information about a website’s technology stack. Whether you're performing security audits, researching a competitor, or simply curious about how a website is built, `WhatWeb` provides an efficient way to extract this information with minimal effort.

With its powerful set of options for customization, scanning multiple URLs, and gathering extensive data, `WhatWeb` can be a key tool in your cybersecurity or web development toolkit.

By incorporating `WhatWeb` into your workflow, you can easily identify the technologies behind a website and make more informed decisions based on this valuable data.