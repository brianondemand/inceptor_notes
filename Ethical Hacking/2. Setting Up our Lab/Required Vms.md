
### 🔷 **Whonix (Anonymity-Focused Linux OS)**

|VM Name|Description|
|---|---|
|**Gateway**|Routes all traffic through Tor. Must be powered on before the workstation.|
|**Whonix-Workstation-Xfce**|A desktop environment that routes all traffic through the Whonix Gateway for anonymity.|

🔐 Use case: Practicing safe, anonymous browsing or testing malware in a secure environment.

---

### 🏢 **Active Directory Lab (Core of your AD environment)**

|VM Name|Description|
|---|---|
|**AD Server-2019**|Windows Server 2019 acting as the **Domain Controller (DC)**. Hosts Active Directory, DNS, and Group Policy Management.|
|**Freddie PC**|A Windows 7 client machine. Used to join the domain and simulate a user workstation.|
|**Arthur PC**|A Windows 10 client machine. Another domain-joined workstation.|
|**pimp-kali**|A Kali Linux machine. Can be used for penetration testing, attacking the domain, privilege escalation, etc.|

💡 Use case: Full AD test environment — configure Group Policies, join machines to the domain, test domain logon, and conduct red team vs. blue team exercises.

---

## 🔍 **Pentest Virtual Machines**

|VM Name|Description & Use Case|
|---|---|
|**hacksudo - Thor**|A hacking-focused Linux distro, similar to Kali or Parrot. Ideal for red team exercises. Likely contains tools for reconnaissance, exploitation, and reporting.|
|**Investigator Box Android**|Android-based forensic box. Use for mobile penetration testing or Android malware analysis.|
|**Shuriken_Node**|Possibly a custom or CTF-target machine with a Node.js-based vulnerable app. Useful for web app pentesting.|
|**Metasploitable 2**|A widely-used intentionally vulnerable Linux VM. Great for practicing with Metasploit, Nessus, and other tools.|
|**Deathnote**|Custom hacking distro (based on hacksudo?). Could include preinstalled tools and themes.|
|**bee-box**|A vulnerable web application box provided by ITSecGames. Focused on **OWASP Top 10** testing and web app pentesting.|
|**Kioptrix Level 1**|A CTF-style vulnerable VM series. Great for practicing privilege escalation and enumeration on Linux systems.|

---

### 🧠 Suggested Lab Exercises for Pentest VMs:

- Scan and exploit **Metasploitable 2** with `nmap`, `msfconsole`, and `nikto`.
    
- Perform **XSS, SQLi, and CSRF** attacks on `bee-box`.
    
- Use `Kioptrix` to practice Linux local privilege escalation.
    
- Use `Investigator Box Android` to reverse engineer APKs or simulate a mobile app attack.
    
- Set up `Shuriken_Node` as a vulnerable backend to learn REST API attacks (JWT, SSRF, etc.).
    

---

## 🪟 **Windows VMs**

|VM Name|Description & Use Case|
|---|---|
|**Windows Vista**|Legacy system for testing exploits on outdated OS.|
|**Windows XP**|Popular legacy target. Vulnerable to EternalBlue (MS17-010), MS08-067, etc. Great for SMB enumeration and buffer overflow practice.|
|**Windows 8.1**|Mid-range Windows system. Can be domain-joined or used for application compatibility testing.|

---

### 🧪 Suggested Uses:

- Exploit XP using `EternalBlue` or `MS08-067`.
    
- Test malware behavior or AV evasion in isolated Windows environments.
    
- Practice privilege escalation (UAC bypass, token impersonation) on Vista and 8.1.
    
- Simulate user behavior on old systems to detect with Splunk or pfSense logs.

---
### 🔒 **Security & Monitoring Tools**

|VM Name|Description|
|---|---|
|**Parrot OS**|A Debian-based penetration testing OS, similar to Kali but lighter and with more privacy tools.|
|**Ubuntu Splunk Server**|Likely running **Splunk**, a SIEM/log analysis tool. Useful for monitoring the domain, detecting attacks, and building dashboards.|
|**Nessus Scanner**|A popular vulnerability scanner used for internal/external assessments.|
|**TPot Honeypot**|A network honeypot suite to trap attackers and study their techniques.|
|**pfSense Firewall**|An open-source firewall/router. Can simulate realistic network environments with VLANs, NAT, etc.|

🧠 Use case: Defense monitoring, attack detection, and simulating enterprise-level security architecture.

---

## 🧩 Suggested Use Cases for the Lab

1. **Deploy & Test Group Policy (GPOs)**
    
    - Use AD Server-2019 to create GPOs.
        
    - Apply software installs, updates, or disable PowerShell.
        
    - Confirm policy enforcement on `Freddie PC` and `Arthur PC`.
        
2. **Join Clients to Domain**
    
    - Practice domain join steps and troubleshoot common AD issues.
        
3. **Red Team/Blue Team**
    
    - Use `pimp-kali` to attack the domain.
        
    - Defend using logs on the Splunk server, firewall rules on pfSense.
        
4. **Log Aggregation**
    
    - Collect logs from domain machines to Splunk.
        
    - Analyze user behavior, failed logins, etc.
        
5. **Honeypot Deployment**
    
    - Place TPot in the network to catch brute-force or malware attacks.
        
6. **Vulnerability Scanning**
    
    - Use Nessus to scan the internal network and generate compliance reports.
        

---

Would you like a **PDF report or markdown document** of this setup to include visuals, diagrams, or setup instructions?