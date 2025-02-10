

**`cURL`**, short for client URL, is a command-line tool used to make requests, access data, transfer data, and retrieve information from or to a server. This tool, which can also be written as curl, uses libcurl, a URL transfer library that support multiple network protocols, including **HTTP**, **HTTPS**, **FTP**, **POP3**, **SFTP**, **SMB**, and **GOPHER**, to mention a few.

This tool is preferred for automation since it is designed to work without user interaction. cURL can transfer multiple files at once.

## History of cURL

Curl predates Google, given that it was first released in 1996. However, at that time, cURL was known as http-get as it only supported data transfer via Hypertext Transfer Protocol (HTTP).

Later, when it finally supported FTP, the original name was scrubbed off, and the tool was now known as url-get. It was not until March 1998 and a few updates later that the name was again changed to what it is currently known as.

## How to Use cURL with Example?

### Installing cURL

The cURL package is pre-installed on most Linux distributions today.

> **Note:-** To check whether the cURL package is installed on your system, open up your terminal, type `curl` and press enter. If you have `curl` installed, the system will print `curl: try 'curl --help' or 'curl --manual' for more information`. Otherwise, you will see something like `curl command not found`.

If `curl` is not installed you can easily install it using the package manager of your distribution.

#### Install cURL on Ubuntu and Debian

```bash
sudo apt update
sudo apt install curl
```

#### Install cURL on CentOS and Fedora

### How to Use cURL

The syntax for the `curl` command is as follow:

In its simplest form, when invoked without an option, `curl` displays the specified resource to the standard output.

For example, to retrieve the `hkrhasan.com` homepage you would run:

The command will print the source code of the `hkrhasan.com` homepage in your terminal window.

If no protocol is specified, `curl` tries to guess the protocol you want to use, and it will default to `HTTP`.

### Save the Output to a File

To save the result of the `curl` command, use either the `-o` or `-O` option.

Lowercase `-o` saves the file with a predefined filename, which in the example below is `index.html`

```bash
curl -o if.xlsx http://hkrhasan.com/static/excels/if.xlsx
```

Uppercase `-O` saves the file with its original filename:

```bash
curl -O http://hkrhasan.com/static/excels/if.xlsx
```

### Download Multiple files

To download multiple files at once, use multiple `-O` options, followed by the URL to the file you want to download.

In the following example we are downloading the Arch Linux and Debian iso files:

```bash
curl -O https://www.debian.org/doc/manuals/debian-reference/debian-reference.en.pdf \
     -O https://gemmei.ftp.acc.umu.se/debian-cd/current/amd64/iso-dvd/debian-10.0.0-amd64-DVD-1.iso
```

### Resume a Download

You can resume a download by using the `-C` option. This is useful if your connection drops during the download of a large file, and instead of starting the download from scratch, you can continue the previous one.

For example, if you are downloading the Ubuntu 18.04 iso file using the following command:

```bash
curl -O http://releases.ubuntu.com/18.04/ubuntu-18.04-live-server-amd64.iso
```

and suddenly your connection drops you can resume the download with:

```bash
curl -C - -O http://releases.ubuntu.com/18.04/ubuntu-18.04-live-server-amd64.iso
```

HTTP headers are colon-separated key-value pairs containing information such as user agent, content type, and encoding. Headers are passed between the client and the server with the request or the response.

Use the `-I` option to fetch only the HTTP headers of the specified resource:

```bash
curl -I --http2 https://www.hkrhasan.com/
```

![http-header](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fhttp-header.png&w=1920&q=75)

### Test if a Website Supports HTTP/2

To check whether a particular URL supports the new [HTTP/2 protocol](https://developers.google.com/web/fundamentals/performance/http2), fetch the HTTP Headers with `-I` along with the `--http2` option:

```bash
curl -I --http2 -s https://www.facebook.com | grep HTTP
```

The `-s` option tells `curl` to run in a silent (quiet) and hide the progress meter and error messages.

If the remote server supports HTTP/2, `curl` prints `HTTP/2.0 200`:

Otherwise, the response is `HTTP/1.1 200`:

If you have curl version `7.47.0` or newer, you do not need to use the `--http2` option because HTTP/2 is enabled by default for all HTTPS connections.

### Follow Redirects

By default, `curl` doesn't follow the HTTP Location headers.

If you try to retrieve the non-www version of `hkrhasan.com`, you will notice that instead of getting the source of the page you'll be redirected to the wwww version :

![curl-redirect](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fcurl-redirect.png&w=1080&q=75)

The `-L` option instructs `curl` to follow any until it reaches the final destination:

### Change the User-agent

Sometimes when downloading a file, the remote server may be set to block the cURL User-Agent or to different contents depending on the visitor device and browser.

In situations like this to emulate a different browser, use the `-A` option.

For example to emulates Firefox 60 you would use:

```bash
curl -A "Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0" https://getfedora.org/
```

### Specify a Maximum Transfer Rate

The `--limit-rate` option allows you to limit the data transfer rate. The value can be expressed in bytes, kilobytes with the `k` suffix, megabytes with the `m` suffix, and gigabytes with the `g` suffix.

```bash
curl --limit-rate 1m -O https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz
```

This option is useful to prevent `curl` consuming all the available bandwidth.

### Transfer Files via FTP

To access a protected FTP server with `curl`, use the `-u` option and specify the username and password as shown below:

```bash
curl -u FTP_USERNAME:FTP_PASSWORD ftp://ftp.example.com/
```

Once logged in, the command lists all files and directories in the user's home directory.

You can download a single file from the FTP server using the following syntax:

```bash
curl -u FTP_USERNAME:FTP_PASSWORD ftp://ftp.example.com/file.tar.gz
```

To upload a file to the FTP server, use the `-T` followed by the name of the file you want to upload:

```bash
curl -T newfile.tar.gz -u FTP_USERNAME:FTP_PASSWORD ftp://ftp.example.com/
```

### Send Cookies

Sometimes you may need to make an HTTP request with specific Cookies to access a remote resources or to debug an issue.

By default, when requesting a resource with `curl`, no cookies are sent or stored.

To send cookies to the server, use the `-b` switch followed by filename containing the cookies or string.

For example, to download the Oracle java JDK rpm file `jdk-10.0.2_linux-x64_bin.rpm` you'll need to pass a cookie named `oraclelicense` with value `a`:

```bash
curl -L -b "oraclelicense=a" -O http://download.oracle.com/otn-pub/java/jdk/10.0.2+13/19aef61b38124481863b1413dce1855f/jdk-10.0.2_linux-x64_bin.rpm
```

### Using Proxies

`curl` supports different types of proxies, including HTTP, HTTPS and SOCKS. To transfer data through a proxy server, use the `-x` (`--proxy`) option, followed by the proxy URL.

The following command downloads the specified resource using a proxy on `192.168.10.1` port `8888`:

```bash
curl -x 192.168.10.1:8888 https://hkrhasan.com/
```

If the proxy server requires authentication, use the `-U` (`--proxy-user`) option followed by the user name and password separated by a colon (`user:password`):

```bash
curl -U username:password -x 192.168.10.1:8888 https://hkrhasan.com/
```

### Conclusion

`curl` is a command-line tool that allows you to transfer data from or to a remote host. It is useful for troubleshooting issues, downloading files, and more.

The examples shown in this tutorial are simple, but demonstrate the most used `curl` options and are meant to help you understand how the `curl` command work.