
## Four Major Principles for Maintaining the Integrity of Digital Evidence


1. **Lawful Handling of Evidence** – Any action taken by law enforcement agencies or their agents should not alter data stored on a computer or storage media, as it may later be presented in court as evidence.
    
2. **Exceptional Circumstances** – If accessing data on a computer or storage media becomes necessary, the person handling it must be competent enough to provide evidence and explain the relevance and impact of their actions.
    
3. **Independent Verification** – A third-party audit should be able to examine the electronic evidence and achieve the same results to ensure its integrity and reliability.
    
4. **Investigator’s Responsibility** – The lead investigator has the overall responsibility to ensure that legal and forensic principles are strictly followed throughout the investigation.
    

---

## Digital Evidence Processing Guidelines

There are **16 recommended steps** for properly processing digital evidence:

**1. Secure the System**

- If the system is running, consider collecting **volatile information** (e.g., RAM contents, active network connections).
- Shut down the system to prevent **remote access** and **loss of evidence**.

**2. Document Hardware Configuration**

- Record details about **internal and external components** of the system.
- Take **photographs** if necessary to maintain accuracy.

**3. Transport the Computer System to a Secure Location**

- Ensure proper **chain of custody** procedures to maintain integrity.
- Use **anti-static** and **tamper-proof** packaging.

**4. Create a Bit-Stream Backup**

- Make **forensic images** of the **hard disk** and **removable media** (e.g., floppy disks, USB drives).
- Ensure backups are **write-protected** to prevent modifications.

**5. Verify Data Integrity**

- Perform **hash calculations** (MD5, SHA-256) to **authenticate** data and ensure integrity.

**6. Document System Time and Date**

- Record the system’s **BIOS clock** settings.
- Compare with **actual time** to identify discrepancies.

**7. Create a List of Key Search Terms**

- Identify **keywords** relevant to the investigation (e.g., usernames, file names, email addresses).

**8. Analyze Windows Swap File**

- Examine **temporary memory storage** for potential evidence.

**9. Evaluate File Slack Space**

- Analyze **unused space** at the end of files, which may contain hidden data.

**10. Examine Unallocated Space**

- Investigate **deleted or erased files** that may still be recoverable.

**11. Conduct a Thorough File Search**

- Search **files, file slack, and unallocated space** for relevant **keywords**.

**12. Document File Metadata**

- Record **file names, creation dates, modification dates, and access times**.

**13. Identify Anomalous Files and Programs**

- Detect **suspicious software**, **hidden files**, or **unauthorized storage locations**.

**14. Evaluate Program Functionality**

- Determine if any programs have **malicious** or **hidden** capabilities.

**15. Document Findings**

- Maintain **detailed records** of all actions taken and evidence found.
- Ensure all steps follow **forensic best practices**.

**16. Retain Copies of Software Used**

- Keep copies of any **forensic tools** or software used for evidence collection.
- Document tool versions and settings for **reproducibility**.


## The Three A’s of Forensics in a Court of Law

1. **Acquire**
    
    - Evidence must be collected in a way that ensures the original data remains unaltered.
    - Proper forensic tools and methods, such as disk imaging, should be used to create exact copies of the data.
2. **Authenticity**
    
    - The integrity of the evidence must be proven, ensuring that the recovered data is identical to the original.
    - Hashing algorithms (e.g., MD5, SHA-256) are commonly used to verify data integrity.
3. **Analysis**
    
    - The evidence must be carefully examined without modifying the original data.
    - Investigators use forensic tools in a controlled environment to extract useful information while maintaining its integrity.


## Mobile Forensics

Mobile forensics is a branch of digital forensics that focuses on recovering digital evidence or data from a mobile device under forensically sound conditions. A mobile device is any digital device with both internal memory and communication capabilities.

Mobile phones have revolutionized communication, especially among teenagers and young users, connecting them to the internet and each other.

#### Steps of Mobile Forensics

There are five major stages in conducting cyber forensics on a mobile phone:

**1. Preservation**

The first stage in digital evidence recovery involves seizing and securing the suspect's device without altering the data. Proper preservation is crucial as failing to do so can jeopardize the entire investigation, potentially leading to loss of valuable evidence.

**2. Acquisition**

Acquisition is the process of imaging or extracting information from a digital device and its peripheral equipment. This involves selecting appropriate tools and techniques to ensure data integrity.

**3. Examination & Analysis**

This stage applies forensic tools to uncover digital evidence, including hidden or obscured data. Proper analysis ensures that all relevant information is extracted and interpreted correctly.

**4.Reporting**

The reporting process involves preparing a detailed summary of all steps taken during the investigation. A proper forensic report includes:

- A record of all actions performed
- Test results and examinations
- Inferences based on findings

---

#### Challenges in Mobile Forensics

1. Finding a device in liquid
2. Identifying different types of phones
3. Handling devices in various power states
4. Isolation challenges
5. Issues with Chinese-manufactured devices due to a lack of standardization
6. Difficulty performing on-scene acquisition due to uncontrolled environments
7. Bypassing PINs and passwords
8. Selecting appropriate acquisition tools

---

### Extraction Methods in Mobile Forensics

Mobile forensic data extraction is categorized into two primary methods:

#### 1. Physical Extraction

Physical extraction involves direct access to a device's flash memory to retrieve data. This method is challenging because:

- Vendors implement security measures to prevent arbitrary memory access
- Requires specialized tools and expertise

**Physical Extraction Subcategories:**

- **Dumping Tools**: Retrieve a bit-by-bit copy of flash memory, often bypassing security mechanisms.
- **Decoding Tools**: Process the extracted memory dump to retrieve readable data.

#### 2. Logical Extraction

Logical extraction retrieves data using vendor-specific interfaces, typically through synchronization with a computer. However, this method does not recover deleted data, as it is removed from the phone's file system.

#### 3. Manual Extraction

Manual extraction is performed when no suitable forensic tool exists. A forensic examiner navigates through the user interface and manually records data by photographing the screen. This method is time-consuming and prone to human error.

### Characteristics of a Mobile Phone

1. RAM and ROM for memory storage
2. Radio module for communication
3. Speaker
4. Hardware keys and user interface
5. LCD (Liquid Crystal Display)
6. Operating System (Android, iOS, etc.)
7. Support for Wi-Fi connectivity
8. Battery power supply
9. Personal Information Management (phonebook, contacts, etc.)


### SIM Cards and Mobile Equipment

A SIM (Subscriber Identity Module) card is a removable component that contains essential subscriber information. Mobile stations are partitioned into:

1. **Subscriber Identity Module (SIM)**
2. **Mobile Equipment (ME)**

The SIM card can be accessed using a four-digit PIN. If entered incorrectly three times, it gets locked and can be unlocked using a PUK (PIN Unblocking Key).

#### Information Extracted from a SIM

- **LOCI File**: Stores location information, including area identifier codes
- **Serial Number**: Stored in an Integrated Circuit Card Identifier (ICCID) file
- **Subscriber Identifier Information**: Stored in the IMSI (International Mobile Subscriber Identity) file
- **Phone Number Information**: Stored in the Mobile Station ISDN Number file
- **Text Messages**: Stored in SMS-related files (sms, smsp, smss)
- **Dialed Numbers**: Stored in AND (Abbreviated Dialing Numbers) file
- **Last Dialed Numbers (LND)**: Stores recent call history

#### Text Message Status (SMS Data)

- `000000000` - Unused
- `000000001` - Read messages
- `000000011` - Unread messages
- `00000101` - Sent messages
- `00000111` - Not sent messages

---

### Data Extracted from a Mobile Station

1. IMEI (International Mobile Equipment Identity)
2. Call logs
3. SMS logs
4. App user logs
5. Photos and videos
6. Emails
7. GPS location data
8. Voicemail
9. Timeline of phone events
10. Social media accounts
11. Banking information
12. Battery status logs

---

### Tools for Mobile Forensics

1. **Oxygen Forensic**
2. **Mobile Edit Forensic**
3. **Forensic Tool Kit (FTK)**

---

### Threats to Mobile System Data

1. **Unsecured Wi-Fi**: Public Wi-Fi networks can be exploited to steal data.
2. **Data Leakage**: Apps may access and leak sensitive information.
3. **Network Spoofing**: Hackers create fake Wi-Fi networks to capture data.
4. **Social Engineering**: Phishing and smishing attacks trick users into giving up credentials.
5. **Malicious Apps & Websites**: Can install malware or steal data.
6. **Advanced Jailbreaking & Rooting Techniques**: Attackers gain root access, bypassing security controls.

---

## Forensic Linux Commands

#### 1. Information Gathering

- `date -r file.md` – Check the last modified date of a file
- `uname -a` – Display system information
- `ip address` – Show network interfaces
- `ip route` – Display the system's routing table

#### 2. Monitoring Processes

- `top` – Display active processes
- `htop` – Interactive process viewer
- `ps aux` – Show running processes
- `pstree -p` – Display processes in a tree format

#### 3. File System Commands

- `df -h` – Show disk space usage in human-readable format
- `fdisk -l` – List disk partitions
- `mkfs -t ext4 /dev/sda` – Format a partition with the ext4 filesystem

#### 4. Memory and History Commands

- `free -h` – Display memory usage
- `history 10` – Show the last 10 commands used
- `history -c` – Clear history

#### 5. User and SSH Commands

- `w` – Display logged-in users
- `cat ~/.ssh/known_hosts` – Show trusted SSH devices

---



## Writing a Forensic Report

A forensic report should include the following key sections:

1. **Title** – The title should include the case name, date, investigator's name, and relevant contact information.
    
2. **Table of Contents** – This should be autogenerated for easy navigation.
    
3. **Executive Summary** – A brief but comprehensive summary of the case, highlighting key findings and conclusions.
    
4. **Evidence Section** – A detailed list of findings, including a description of the physical and digital evidence submitted.
    
5. **Objective** – Clearly state the reason for conducting the forensic analysis and the purpose of the investigation.
    
6. **Forensic Analysis** – This is a crucial section that details your interaction with the digital evidence, including the steps taken to preserve and forensically acquire it. Document all actions performed using forensic tools and software.
    
7. **Relevant Findings** – The most detailed section of the report, containing artifacts, logs, and any other relevant data discovered during the analysis. Findings should directly relate to the case.
    
8. **Conclusion** – A summary of the investigation, outlining whether the evidence supports the guilt or innocence of the subject under investigation.
    

---

