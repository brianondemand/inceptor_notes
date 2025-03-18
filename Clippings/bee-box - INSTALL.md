bee-box is a custom Linux VM pre-installed with bWAPP.

With bee-box, you have the opportunity to explore all bWAPP vulnerabilities!  
bee-box gives you several ways to hack and deface the bWAPP website.  
It's even possible to hack the bee-box to get root access...

---

## Requirements

- Windows, Linux, or Mac OS  
- VMware Player, Workstation, Fusion, or Oracle VirtualBox

---

## Installation Steps

_No! I will not explain how to install VMware or VirtualBox..._

1. Extract the compressed file.  
2. Double-click on the VM configuration file (`bee-box.vmx`), or import the VM into the VMware software.  
3. Start the VM. It will log in automatically.  
4. Check the IP address of the VM.  
5. Go to the bWAPP login page. If you browse the bWAPP root directory, you will be redirected:  
   - Example: `http://[IP]/bWAPP/`  
   - Example: `http://[IP]/bWAPP/login.php`  
6. Login with the default bWAPP credentials or create a new user:  
   - **Default credentials:** `bee/bug`  
7. You are ready to explore and exploit the bee!

---

## Notes

- **Linux credentials:**  
  - `bee/bug`  
  - `root/bug`

- **MySQL credentials:**  
  - `root/bug`

- Modify the Postfix settings (relayhost, etc.) to your environment:  
  - Config file: `/etc/postfix/main.cf`

- bee-box gives you several ways to deface the bWAPP website.  
  It's even possible to hack the bee-box to get root access...  
  _Have fun!_

- Take a snapshot of the VM before hacking the bee-box.  
  There is also a backup of the bWAPP website (`/var/www/bWAPP_BAK`).

- To reinstall the bWAPP database:  
  1. Delete the database using phpMyAdmin (`http://[IP]/phpmyadmin/`).  
  2. Afterwards, browse to the following page: `http://[IP]/bWAPP/install.php`.

- _Don't upgrade the Linux operating system—you will lose all the fun!_

---
