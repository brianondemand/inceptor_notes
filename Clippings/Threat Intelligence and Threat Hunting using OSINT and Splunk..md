[Sitemap](https://medium.com/sitemap/sitemap.xml)

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*_sSLvnPEazJvVwYKU-xqCg.png)

Organizations must actively defend against threats by leveraging Open-Source Intelligence (OSINT) and Threat Intelligence (TI) feeds. These tools help security professionals to identify vulnerabilities, track emerging threats, and take proactive measures to mitigate risks. In this hands-on activity, we explore how to gather threat intelligence using OSINT tools, analyze security logs using a Security Information and Event Management (SIEM) tool like Splunk, and conduct a basic threat hunt to detect suspicious activity on a network.

This guide will walk through the steps of using OSINT tools like **Shodan** and **VirusTotal**, ingesting security logs into **Splunk**, and analyzing the data to identify potential threats. The final phase includes proposing mitigation and remediation steps based on the findings.

## Step 1: Gathering Threat Intelligence Using OSINT

OSINT (Open-Source Intelligence) tools provide valuable insights into potential security threats by analyzing publicly available information. For this activity, we will use **Shodan** and **VirusTotal** to gather intelligence on exposed services and malicious files.

## Option 1: Using Shodan

**Shodan** is a search engine that indexes internet-connected devices. It allows security professionals to identify **exposed services, default credentials, and vulnerabilities** across the internet.

**Performing a Shodan Search:**

- Navigate to [Shodan](https://www.shodan.io/).
![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*csdeiRp3tgYAKGD7Ggn_Uw.png)

Use specific filters to search for vulnerable devices. Example queries:

`1. port:22` – Find devices running SSH. United states was leading in term of open port:22

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*nr5SDyWWFPluWkkPjAdw9w.png)

Open port 22 in kenya

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*bZ72M2ae-ic0BroYIDwPew.png)

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*kHtReFy6M4MAcRfcW9zdLA.png)

**Services Running on Port 22**

- **SSH (Secure Shell):** Used for remote administration and secure file transfer (SFTP, SCP).
- **SSHD (SSH Daemon):** A server-side service that listens for SSH connections.
- **SFTP (SSH File Transfer Protocol):** Secure file transfer service.
- **Some IoT Devices:** Certain network devices and embedded systems use SSH for remote management.

**How Attackers Can Exploit Open Port 22**

- **Brute Force Attacks:** Attackers try multiple username/password combinations to gain access.
- **Dictionary Attacks:** Using a list of common passwords to crack weak SSH credentials.
- **Exploit Vulnerabilities:** Unpatched SSH services may have security flaws (e.g., outdated OpenSSH versions).
- **Misconfigured SSH:** Default credentials or weak authentication mechanisms can be exploited.
- **Man-in-the-Middle (MITM) Attacks:** If SSH is not properly configured (e.g., accepting weak ciphers), attackers can intercept and manipulate traffic.
- **Credential Harvesting:** If an attacker gains access, they can use stolen credentials to pivot within the network.
- **Backdoors & Persistence:** Attackers may install SSH backdoors for continued access.

**Mitigations to Secure Port 22**

- **Change Default SSH Port:** Use a non-standard port to reduce automated scanning.

**Use Strong Authentication:**

- Disable password-based login and enforce SSH key-based authentication.
- Implement two-factor authentication (2FA).
- **Implement Rate Limiting & Account Lockouts:** Prevent brute force attempts using tools like **Fail2Ban** or **DenyHosts**.

**Restrict Access:**

- Allow SSH access only from trusted IP addresses using firewall rules.
- Disable SSH root login (`PermitRootLogin no` in SSH config).
- **Keep SSH Updated:** Regularly patch and update OpenSSH and related services.
- **Monitor & Log Activity:** Use **SIEM tools** and log analysis to detect suspicious SSH activity.
- **Use Strong Encryption:** Ensure only strong ciphers and key exchange algorithms are allowed (`/etc/ssh/sshd_config`).
- **Disable Unnecessary Features:** If file transfer is not needed, disable SFTP and SCP.

`2. default password` – Locate devices with weak/default credentials.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*rnliKikRwytHQ6-kC_Hdbg.png)

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*YeS2tw4oNxS_y-D3dpqlVw.png)

**What Are Default Passwords:** Default passwords are pre-configured credentials set by manufacturers on devices, applications, and services.

- Commonly found in **routers, IoT devices, servers, databases, and industrial control systems**.
- Examples: **Admin/Admin**, **root/toor**, **admin/1234**, **guest/guest**.

**How Attackers Exploit Default Passwords**

- **Credential Stuffing:** Attackers use known default passwords from online databases (e.g., Shodan, Censys, GitHub leaks).
- **Brute Force Attacks:** Automated scripts try common default credentials to gain unauthorized access.
- **IoT Botnet Infections:** Malware like **Mirai** scans the internet for devices with default passwords and turns them into bots for DDoS attacks.
- **Privilege Escalation:** If an attacker logs in with default credentials, they can elevate privileges and take over critical systems.
- **Lateral Movement:** Once inside a network, attackers use compromised credentials to move laterally to other systems.

**Mitigations Against Default Password Exploitation**

- **Change Default Credentials Immediately:** Set strong, unique passwords for every device and service.
- Use a **password manager** to generate and store credentials securely.
- **Implement Multi-Factor Authentication (MFA):** Adds an extra layer of security even if credentials are compromised.
- **Restrict Remote Access:** Disable **remote login** via SSH, Telnet, or web interfaces if not needed.

**Enforce Strong Password Policies:**

- Minimum 12+ characters, mix of uppercase, lowercase, numbers, and symbols.
- Regular password rotations where necessary.
- **Use Network Segmentation:** Isolate IoT and critical infrastructure from the main network to limit exposure.
- **Monitor and Audit Logins:** Set up logging and alerts for failed login attempts or unauthorized access.
- **Disable Unused Accounts:** Remove or disable default accounts that are not required.
- **Use Firewalls and Access Controls:** Block unauthorized access to management interfaces.
- **Regularly Update Firmware & Software:** Security patches fix vulnerabilities that allow attackers to bypass authentication.

## Option 2: Using VirusTotal

**VirusTotal** is a web-based threat intelligence platform that scans files, URLs, and domains against multiple antivirus engines to detect malware.

**Scanning a Suspicious File or URL:**

- Go to [VirusTotal](https://www.virustotal.com/).
![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*6ThNbumeVR-6loorPSik8g.png)

- Upload a **potentially malicious file** or enter a **URL** for analysis.
- I got a malicious URL from this site [https://github.com/mitchellkrogza/The-Big-List-of-Hacked-Malware-Web-Sites/blob/master/.dev-tools/\_strip\_domains/domains.txt](https://github.com/mitchellkrogza/The-Big-List-of-Hacked-Malware-Web-Sites/blob/master/.dev-tools/_strip_domains/domains.txt) to test
![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*UU8lDzMvygAGjBmKqNQ3ZA.png)

**Findings & Security Implications:**

- If a file is flagged by multiple engines, it may be a **trojan, ransomware, or spyware**.
- A flagged URL may indicate a **phishing site** or a **malicious command-and-control (C2) server**.
- Organizations should **block malicious domains, quarantine suspicious files, and alert users about phishing threats.**

## Step 2: Collecting and Analyzing Data Using Splunk

After gathering threat intelligence, the next step is to analyze network security logs in **Splunk**, a powerful SIEM tool that helps detect suspicious activities.

**1\. Setting Up Splunk**

- **Option 1: Local Setup** — Download and install [Splunk Free](https://www.splunk.com/en_us/download/splunk-enterprise.html).
- **Option 2: Cloud-Based Splunk** — Use **Splunk Cloud** for log analysis without local installation.
- **command** to download splunk for linux: *wget -O splunk-9.4.0–6b4ebe426ca6-linux-amd64.deb “* [*https://download.splunk.com/products/splunk/releases/9.4.0/linux/splunk-9.4.0-6b4ebe426ca6-linux-amd64.deb*](https://download.splunk.com/products/splunk/releases/9.4.0/linux/splunk-9.4.0-6b4ebe426ca6-linux-amd64.deb) *"*
![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*HS2RjPjujr0x6vkQtn33iw.png)

Install it: sudo dpkg -i splunk-9.4.0–6b4ebe426ca6-linux-amd64.deb

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*G44cdbalzJjjm8lejKqiVg.png)

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*9UnCiW5kh6EjhXhnkpUTNw.png)

Start Splunk and set an admin password: sudo /opt/splunk/bin/splunk start

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*HPJv-ZhLXsfLB4DqhmQLCg.png)

Open Splunk’s web interface: [http://Kali:8000](http://kali:8000/)

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*rhMO8fwwQ4WckSKIeiby7Q.png)

## Ingesting Security Logs

Collect and ingest logs from various sources, such as:

- **Firewall logs** (detecting unauthorized access).
- **Windows Event logs** (detecting failed logins).
- **Syslog data** (monitoring network devices).
- Dns logs

To ingest logs in Splunk, we go to settings and then data inputs

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*9m-_aVFmxvsxAZ3vOswT4Q.png)

- Select the type of input you want to configure. For example, if you’re uploading a log file from your local machine, choose **Files & Directories**.
- If you’re collecting logs directly from a network or a server, you can choose other inputs like **TCP/UDP** or **HTTP Event Collector**.

## Steps to Upload Sample DNS Log Files to Splunk SIEM

**1\. Prepare Sample DNS Log Files**

- Obtain sample [DNS log file](https://www.secrepo.com/maccdc2012/dns.log.gz) in a suitable format (e.g., text files).
- Ensure the log files contain relevant DNS events, including source IP, destination IP, domain name, query type, response code, etc.
- Save the sample log files in a directory accessible by the Splunk instance.

**2\. Upload Log Files to Splunk**

- Log in to the Splunk web interface.
- Navigate to Settings > Add Data.
- Select Upload as the data input method.
- Click on Select File and choose the sample DNS log file you prepared earlier.
![](https://miro.medium.com/v2/resize:fit:640/format:webp/0*HjufE4DAOQ71O0aa.png)

**3\. Set Source Type**

- Click on next and in the Set Source Type section, specify the source type for the uploaded log file.
![](https://miro.medium.com/v2/resize:fit:640/format:webp/0*U6QYx-pPBDbKzoMt.png)

- Choose the appropriate source type for DNS logs (e.g., `dns` or a custom source type if applicable).

**4\. Review Settings**

- Review other settings such as index, host, and sourcetype.
- Ensure the settings are configured correctly to match the sample DNS log file.
![](https://miro.medium.com/v2/resize:fit:640/format:webp/0*MeU0YhCCa3LgaBQp.png)

**5.Click Upload**

- Once all settings are configured, click on the Review button.
- Review the settings one final time to ensure accuracy.
- Click Submit to upload the sample DNS log file to Splunk.
![](https://miro.medium.com/v2/resize:fit:640/format:webp/0*oQBgGujeKcu20bM6.png)

Click on start searching

![](https://miro.medium.com/v2/resize:fit:640/format:webp/0*S4MOyjy58VTtbguM.png)

## Steps to Analyze DNS Log Files in Splunk SIEM

**1\. Search for DNS Events**

- Open Splunk interface and navigate to the search bar.
- Enter the following search query to retrieve DNS events
- command: source=”dns.log” host=”Sumshi” sourcetype=”dnslogs”
![](https://miro.medium.com/v2/resize:fit:640/format:webp/0*uWnR6dlaW-Ls3GSW.png)

**Explanation:**

- This retrieves all events from the `dns.log` file that were collected from the host `Sumshi`.
- The `sourcetype="dnslogs"` ensures that we are filtering the logs based on the correct format.

**2\. Extract Relevant Fields**

- Before extracting we need to parse our data, click on extract new fields
- Select one field, and then select regular expression as the method
- Give name to the fields that we will use in our query and then validate them
![](https://miro.medium.com/v2/resize:fit:640/format:webp/0*vf9hkyN7xQipYOHv.png)

- A regular expression will be generated at the end.
![](https://miro.medium.com/v2/resize:fit:640/format:webp/0*8VhdshasQrB6qWYb.png)

- The created fields will appear here:
![](https://miro.medium.com/v2/resize:fit:640/format:webp/0*8XQW4wkn_zcOUO8S.png)

**3\. Identify Anomalies**

- Look for unusual patterns or anomalies in DNS activity.
- Example query to identify spikes: *source=”dns.log” host=”Sumshi” sourcetype=”dnslogs”* `*| stats count by domain*`
![](https://miro.medium.com/v2/resize:fit:640/format:webp/0*t4Pzn7jo3Jhmvoyn.png)

**Explanation:**

- `stats count by domain` groups logs by domain name and counts occurrences.
- An unusually high count for a single domain could indicate malicious activity (e.g., DNS tunneling or exfiltration).

**4\. Find the top DNS sources**

- To identify frequently queried domains and their originating IPs
- command: source=”dns.log” host=”Sumshi” sourcetype=”dnslogs” | top domain, src\_ip
![](https://miro.medium.com/v2/resize:fit:640/format:webp/0*uuiEW_Tiv4c71pFa.png)

**Explanation:**

- `top domain, src_ip` finds the most common domain queries along with their source IPs.
- This helps detect excessive DNS queries from a specific host, which could indicate malware activity.

**5\. Investigate Suspicious Domains**

- Search for domains associated with known malicious activity or suspicious behavior.
- Utilize threat intelligence feeds or reputation databases to identify malicious domains such virustotal.com

## Mitigation and Remediation

1. **Blocking Malicious IPs & Domains**
- Identify and block all malicious IP addresses and domains observed in the threat intelligence (TI) data.
- Update firewall rules and intrusion prevention systems (IPS) to prevent communication with known threat actors.

**2\. Updating Firewall and Access Control Rules**

- Implement strict firewall rules to limit inbound and outbound traffic only to trusted sources.
- Apply network segmentation to isolate critical assets from general user traffic, minimizing the attack surface.

**3\. Patching Vulnerable Systems**

- Apply security patches and updates to all systems identified as vulnerable to exploitation in the threat intelligence report.
- Ensure regular patch management procedures are in place to reduce the risk of known exploits being used by attackers.

**4\. Enhancing Endpoint Security**

- Deploy endpoint detection and response (EDR) solutions to monitor suspicious activity in real time.
- Ensure that all endpoints have up-to-date antivirus and anti-malware solutions.

**5\. Updating Intrusion Detection & Prevention Rules**

- Integrate the collected TI data into the SIEM system to enhance correlation rules for detecting threats.
- Update signatures in intrusion detection systems (IDS) and intrusion prevention systems (IPS) to detect and block new attack pattern

**6\. Improving Email Security**

- Enable advanced email filtering and anti-phishing mechanisms to prevent users from receiving malicious links or attachments.
- Implement DMARC, SPF, and DKIM email authentication protocols to reduce email spoofing risks.

**7\. User Awareness and Training**

- Conduct cybersecurity awareness training for employees to recognize and report phishing attempts and suspicious activities.
- Establish clear policies for handling sensitive data and external communications.

**8\. Enhancing Monitoring and Logging**

- Increase logging retention and review security logs more frequently for signs of compromise.
- Configure Microsoft Sentinel to generate alerts for abnormal activity, such as multiple failed logins or unusual access patterns.

**9\. Implementing Multi-Factor Authentication (MFA)**

- Enforce MFA across all critical systems to prevent unauthorized access, even if credentials are compromised.

**10\. Developing an Incident Response Plan**

- Create and refine an incident response playbook for handling security incidents effectively.
- Conduct periodic tabletop exercises to test the readiness of the security team.

## Conclusion

Threat Intelligence and Threat Hunting using OSINT and Splunk play a critical role in strengthening an organization’s cybersecurity posture. By leveraging OSINT tools like Shodan and VirusTotal, security professionals can identify exposed services, detect vulnerabilities, and uncover malicious threats. Additionally, integrating this intelligence into a SIEM platform like Splunk enables real-time log analysis, anomaly detection, and proactive threat mitigation.

This guide has demonstrated the end-to-end process of gathering threat intelligence, ingesting security logs, and conducting threat hunting activities. Effective threat detection requires continuous monitoring, log correlation, and the implementation of security best practices such as strong authentication, network segmentation, and automated alerts.

By combining OSINT techniques with Splunk’s analytical capabilities, organizations can enhance their ability to detect and respond to cyber threats efficiently, reducing risk and improving overall security resilience.

Cloud Computing | Cybersecurity | Penetration Testing | Threat Detection | Security Operations

## More from Sumayasomow

## Recommended from Medium

[

See more recommendations

](https://medium.com/?source=post_page---read_next_recirc--75e1e6b5edbd---------------------------------------)