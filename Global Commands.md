

```bash
sudo usermod -aG docker $USER
```

- Add your user to the `docker` group so you don’t need `sudo` every time.


```
inurl:"/private" intext:"index of /" "win64" -litespeed
```


```
intitle:"index of" /etc/shadow
```

```
Apache port:80 city:"Nairobi"
```


```bash
sudo arp-scan -l
```

### Discover devices on a network

```bash
sudo arp-scan --interface=INTERFACE --localnet
```


```bash
sudo netdiscover
```


- Delete Docker images

```
docker rmi -f <image_id>
```

- Directory structure

```
tree -L 2
```




**pwcache refers to a mechanism, often implemented as a library or set of functions, for caching user and group information retrieved from the system's password and group databases (like /etc/passwd and /etc/group). This caching improves performance by reducing the number of calls to functions like getpwnam and getgrnam, which can be slow.** 


```bash
find . -name *.log -mtime -1
```

- find: search for files & directories
- `.` : start from wherever you currently are
- `-name "*.log"` : look for files whose names end with `.log`
- `*`: wildcard meaning any characters
- `-mtime`: modification time (in days)
- `-1`: means less than 1 day ago(modified within the last 24 hours)