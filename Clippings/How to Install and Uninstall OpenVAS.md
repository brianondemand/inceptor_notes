
**OpenVAS**, an application used to scan endpoints and web applications to identify and detect vulnerabilities. 

It is commonly used by corporations as part of their mitigation solutions to quickly identify any gaps in their production or even development servers or applications. 

This is not an end all be all solution but can help to get rid of any common vulnerabilities that may have slipped through the cracks.

## Steps to Install OpenVAS on Kali Linux

Before installation Update your system.

```c
sudo apt update && sudo apt upgrade -y
```

**Install OpenVAS:** Install it via the updated package from Kali Linux.

```c
sudo apt install openvas -y
```

After installation, run this command to auto-configure OpenVAS.

```c
sudo gvm-setup
```

Once the setup is complete, verify that OpenVAS is running correctly.

```c
sudo gvm-check-setup
```

> If you encounter minor issues, the output of this command will guide you with specific fixes.

Run this command to create a new user account for logging in.

```c
sudo runuser -u _gvm -- gvmd --create-user=admin --password=password
```

**Access GVM Web Interface:** Open a web browser and go to this address to access GVM.

[https://127.0.0.1:9392](https://127.0.0.1:9392/)

Use the username and password you created in step 5 to log in.

## Steps to Completely Uninstall OpenVAS

**Before uninstalling:** Stop all related services.

```c
sudo systemctl stop gvmd
sudo systemctl stop openvas-scanner
sudo systemctl stop ospd-openvas
sudo systemctl stop redis-server
```

Run this command to uninstall OpenVAS and its related packages.

```c
sudo apt purge openvas gvmd gvm*
sudo apt autoremove --purge
sudo apt clean
```

After uninstalling the packages, delete any files and directories associated with OpenVAS/GVM from your system.

```c
sudo rm -rf /etc/openvas
sudo rm -rf /var/lib/openvas
sudo rm -rf /var/lib/gvm
sudo rm -rf /var/log/gvm
sudo rm -rf /var/lib/redis
```

**Remove User (\_gvm):** If you created the user \_gvm during installation, delete this user as well.

```c
sudo deluser --remove-home _gvm
```

---

