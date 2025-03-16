
 **Cyber forensics refers to the practice of extracting information, analyzing the data, and gaining intelligence. This data is specific to activities that one can present in a court of law as a structured chain of evidence.**

The major challenge of cyber forensics is actually finding, collecting, preserving, and presenting data in a manner that is admissible in a court of law.

Electronic evidence is fragile and can easily be modified. Additionally, cybercriminals, dishonest employees, and even well-intentioned users may hide, disguise, encrypt, or destroy evidence stored on digital media using various freeware, shareware, and commercially available utility programs.

Cyber forensics is both an art and a science, and it is still in its infancy.

With technology evolving, mutating, and changing at a rapid pace, the rules governing the application of cyber forensics to forensic auditing are constantly evolving.

New techniques and procedures are developed to provide information security professionals with better methods for finding, collecting, and preserving electronic evidence for use in legal proceedings against cybercriminals.

 **NOTE:** 
 
- To conduct cyber forensics, we need real evidence, such as barcodes, magnetic tapes, and electronic transaction records, to reconstruct incidents in a structured sequence for defense.  

- In most cases, forensic investigations are conducted in situations involving breaches of contract, copyright infringement, and intellectual property theft.  


## Principles of Cyber Forensics

Cyber forensics primarily focuses on identifying and recovering digital evidence from computers.
The key principles include:

- **Preservation**
  
- **Collection**
  
- **Validation**
  
- **Identification**
  
- **Analysis**
  
- **Interpretation**
  
- **Documentation**
  
- **Presentation**


## The Cyber Forensics Process

The digital forensics process may change from one scenario to another, but it typically consists of four core steps—collection, examination, analysis, and reporting.

#### Collection

The collection phase involves acquiring digital evidence, usually by seizing physical assets, such as computers, hard drives, or phones. It is critical to ensure that data is not lost or damaged during the collection process. You can prevent data loss by copying storage media or creating images of the original.

#### Examination

The examination phase involves identifying and extracting data. You can split this phase into several steps—prepare, extract, and identify.

When preparing to extract data, you can decide whether to work on a live or dead system. For example, you can power up a laptop to work on it live or connect a hard drive to a lab computer.

During the identification step, you need to determine which pieces of data are relevant to the investigation. For example, warrants may restrict an investigation to specific pieces of data.

#### Analysis

The analysis phase involves using collected data to prove or disprove a case built by the examiners. Here are key questions examiners need to answer for all relevant data items:

- Who created the data
  
- Who edited the data

- How the data was created

- When these activities occur


In addition to supplying the above information, examiners also determine how the information relates to the case.

#### Reporting

The reporting phase involves synthesizing the data and analysis into a format that makes sense to laypeople. These reports are essential because they help convey the information so that all stakeholders can understand.


## Different Branches of Cyber Forensics

Here is a brief overview of the main types of digital forensics:

#### Computer Forensics

Computer forensic science (computer forensics) investigates computers and digital storage evidence. It involves examining digital data to identify, preserve, recover, analyze and present facts and opinions on inspected information.

This branch of computer forensics uses similar principles and techniques to data recovery, but includes additional practices and guidelines that create a legal audit trail with a clear chain of custody.

#### Mobile Device Forensics

Mobile device forensics focuses primarily on recovering digital evidence from mobile devices. It involves investigating any device with internal memory and communication functionality, such as mobile phones, PDA devices, tablets, and GPS devices.

#### Network Forensics

The network forensics field monitors, registers, and analyzes network activities. Network data is highly dynamic, even volatile, and once transmitted, it is gone. It means that network forensics is usually a proactive investigation process.

#### Forensic Data Analysis

Forensic data analysis (FDA) focuses on examining structured data, found in application systems and databases, in the context of financial crime. FDA aims to detect and analyze patterns of fraudulent activity.

#### Database Forensics

Database forensics involves investigating access to databases and reporting changes made to the data. You can apply database forensics to various purposes. For example, you can use database forensics to identify database transactions that indicate fraud.

Alternatively, your database forensics analysis may focus on timestamps associated with the update time of a row in your relational database. This investigation aims to inspect and test the database for validity and verify the actions of a certain database user.


## Digital Evidence in Cyber Forensics

Digital evidence refers to **any information stored or transmitted in digital form** that can be used in investigations. It plays a crucial role in **proving cybercrimes, identifying suspects, and reconstructing incidents** in cyber forensics.

**Characteristics of Digital Evidence**

1. **Intangible** – Unlike physical evidence (e.g., fingerprints), digital evidence exists in electronic form and requires special tools to extract.
2. **Easily Altered** – Can be modified, deleted, or encrypted if not properly preserved.
3. **Time-Sensitive** – Some data, like **network logs and volatile memory (RAM), can be lost if not captured immediately**.
4. **Can Be Hidden** – Criminals use methods like **encryption, steganography, and anonymization** to conceal evidence.

### Types of Digital Evidence


**1. Computer-Based Evidence**

Digital data stored in **hard drives, SSDs, USBs, or external storage devices**.  
**Examples:**

- Deleted emails proving fraudulent activities.
- Log files from an OS showing unauthorized access.
- Browser history showing visits to malicious websites.

**2. Network-Based Evidence**

Captured network traffic or logs from **firewalls, routers, or servers**.  
**Examples:**

- **IP logs** showing where a hacking attempt originated.
- **Packet captures (PCAP files)** from tools like Wireshark revealing a data exfiltration attempt.
- **Email headers** showing phishing attempts or fake sender details.

**3. Mobile Device Evidence**

Data retrieved from **smartphones, tablets, or smartwatches**.  
**Examples:**

- **Deleted WhatsApp messages** from a suspect's phone.
- **GPS location data** placing a criminal at a crime scene.
- **Call logs and SMS messages** confirming illegal communication.


**4. Cloud-Based Evidence**

Data stored in **Google Drive, OneDrive, AWS, etc.** that can be remotely accessed.  
**Examples:**

- **Logins from unusual locations**, indicating an account compromise.
- **Backup files** containing stolen company data.
- **Transaction records** showing money laundering activities.


**5. IoT and Smart Device Evidence**

Smart home devices, **CCTV cameras, fitness trackers, and connected cars** can store valuable data.  
**Examples:**

- **A smart doorbell camera** recording a hacker entering a premises.
- **Voice recordings** from smart assistants (e.g., Alexa) capturing a crime in progress.
- **Car GPS logs** showing a suspect’s movements.


**6. Memory-Based Evidence (Volatile Data)**

RAM and running processes that **disappear when a device is powered off**.  
**Examples:**

- **RAM dumps** showing malware activity before encryption.
- **Running processes** proving a ransomware attack was active.
- **Clipboard data** containing stolen passwords.


**7. Malware and Code-Based Evidence**

Digital traces left behind by malicious software.  
**Examples:**

- **Trojan horse malware code** proving a targeted attack.
- **Keylogger logs** capturing user credentials.
- **Ransomware encryption keys** needed for decryption.

---

## Forensic Software and Hardware

**1. Forensic Toolkit (FTK)**

Features of Forensic Toolkit:

1. Advanced code-breaking and password recovery capabilities.
2. Enhanced email support for forensic analysis.
3. Powerful search functionality for deep data exploration.
4. Broad filesystem support, including FAT, NTFS, and EXT formats.
5. Deep and mature data processing engine for comprehensive forensic investigations.
6. Integrated database that eliminates data integrity issues.
7. User-friendly interface for ease of use.
8. Unmatched speed and multi-processor support for faster investigations.


**2. CD/DVD Inspector**

Features:

1. MD5 hashing capability for data integrity verification.
2. File scanning capability for identifying recoverable data.
3. Ability to create ZIP images from media for forensic analysis.
4. Disk memory checkpoint to track changes.
5. Improved encoding capabilities for better data extraction.


**3. Device Seizure Toolbox (Hardware)**

- Designed as a collection of essential items for various scenarios involving device seizure.
- When combined with appropriate forensic software, it enables efficient data acquisition from seized devices.


**4. Spector Pro**

- A software tool used for monitoring and recording all PC and internet activity on a targeted computer.


**5. LiveWire Investigator**

Features:

1. Lightweight network investigation tool.
2. Helps acquire system information.
3. Supports physical memory imaging.
4. Capability to capture remote screenshots.
5. Active monitoring of system processes and network activity.
6. Tracks network state and open connections.
7. Intelligent file acquisition for forensic analysis.
8. Dynamic indexing and analysis for quick evidence retrieval.


**6. On-Scene Investigator Software**

- Built for first responders at a crime scene or investigators who need to quickly review or copy information from a suspect's computer.
- **Note:** Requires a **Class Super CD** and a **crossover cable** for operation.

Features:

1. Cost-effective forensic solution.
2. Quick searching capability.
3. Performs imaging of computers for evidence collection.


**7. F-Response**

- Designed to enable forensic investigators to conduct live forensic data recovery and **eDiscovery** over an IP network using their own tools.


**8. Road**

- A forensic software developed for **data acquisition and analysis**.
- Also designed for **fast and reliable hard drive imaging**.


**9. Forensic Disk Data Collector**

- Used for imaging hard drives in forensic investigations.
- Creates disk images that are **readable by forensic software**.
- Supports **MD5 hashing** to verify data integrity.


**10. Disk Blocker**

- Hardware devices that allow the acquisition of information from a drive **without the risk of accidentally modifying its contents**.
- Essential for forensic investigations to maintain data integrity.

---

### Collection and Preservation of Digital Evidence

To maintain **integrity and admissibility in court**, digital evidence must be:

- **Collected lawfully** – Using forensic tools like EnCase, FTK, or Autopsy.
- **Preserved properly** – Making **bit-by-bit forensic copies** to prevent data alteration.
- **Documented correctly** – Keeping a **chain of custody** to track who handled the evidence.
- **Analyzed systematically** – Using forensic software to reconstruct cyber incidents.


## What Is Need To Conduct Cyber Forensic

- **Dedicated High-Performance Workstation** – A powerful system capable of handling large datasets and forensic analysis tasks.
  
- **Write-Block Hardware** – Prevents modification of original data while making forensic copies.
  
- **Laptop for On-Site Forensics** – Portable system for field investigations and data acquisition.
  
- **Multiple Spare Hard Drives** – Used for storing forensic images and backups.
  
- **Write-Once Media** – CDs, DVDs, or other non-rewritable storage for securely storing evidence.
  
- **Forensic Software** – Tools such as EnCase, FTK, Autopsy, and Magnet AXIOM for data analysis and recovery.


## Requirements For Computer Forensics

### 1. Hardware Requirements

- Must be highly familiar with **internal and external computer components**.
  
- Have a **thorough understanding of hard drives** and their configurations, including file systems and partitions.
  
- Knowledge of **motherboards and chipsets** used in different systems.
  
- Understanding of **different types of memory (RAM, ROM, cache, etc.)**.
  
- **BIOS/UEFI Knowledge** – Understanding its functions, settings, and limitations.
  
- **Operating System Knowledge** – Familiarity with **Windows, Linux (UNIX-based systems), and macOS**.
  
- Experience with **different virtual machines** for forensic testing and sandboxing environments.


### 2. Software Requirements

- **General Software Proficiency** – Familiarity with essential software packages such as Microsoft Office for documentation and reporting.
  
- **Forensic Tools** – Proficiency in forensic techniques and specialized software such as:
    - **EnCase** – Used for disk analysis and evidence recovery.
    - **FTK (Forensic Toolkit)** – For data acquisition and indexing.
    - **Autopsy** – Open-source forensic analysis tool.
    - **Wireshark** – For network packet analysis.
    - **Volatility** – For memory forensics.
    - **Magnet AXIOM** – Digital forensic and mobile data extraction tool.
    - **Kali Linux tools** – Used for penetration testing and forensic analysis.

## Challenges with cyber forensics

Cyber forensics experts extract data from a variety of sources — any technologies that may be used by an end-user. These include mobile devices, cloud computing services, IT networks, and software applications.

Distinct vendors develop and operate these technologies. The technology limitations and privacy measures tend to restrict the investigative capacity of an individual InfoSec expert as they face the following challenges:

- **Data recovery.** If the data is encrypted, the investigator will not be able to decrypt the information without access to encryption keys. New storage tools such as SSD devices may not offer immediate factory access to recover lost data, unlike traditional magnetic tape and hard disk drive systems.
  
- **Visibility into cloud system.** Investigators may only have access to metadata but not the information content of the files. The underlying resources may be shared and allocated dynamically. That lack of access to physical storage systems means that third-party investigators might not recover lost data.
  
- **Network log big data.** Network log data grows exponentially and requires advanced analytics and AI tools to connect the dots and find insightful relationships between networking activities.
  
- **Multi-jurisdiction data storage.** If the data is stored in a different geographic location, cyber forensics investigators may not have the legal authority to access the required information.

While there are challenges with cyber forensics, there are also resources that can help you minimize their impact, if not overcome them.

---

## Classification of Data Collected in Cyber Forensics

**1. Host-Based Information**

- This type of evidence includes **log records, documents, and any other data** found on a system rather than **network-based sources**.
- Host-based information may include **system backups**, which preserve evidence at a specific point in time.
- Data collection is done in **two primary ways**:
    1. **Live data collection** (retrieving information while the system is running).
    2. **Forensic duplication** (creating an exact copy of the system for analysis).

**Volatile Information Recorded in Host-Based Analysis:**

i. System date and time.  
ii. Applications currently running on the system.  
iii. All active network connections.  
iv. Open sockets.  
v. Applications listening on a specific socket.  
vi. Network interface status.  
vii. Temporary files (some may be lost if not collected immediately).

---

**2. Network-Based Information**

- Network-based evidence can be obtained from various sources, including:
    
    1. **Intrusion Detection System (IDS) logs**
    2. **Network monitoring logs**
    3. **Router logs**
       
- Organizations typically perform **network surveillance** (**consensual monitoring**) to:
    
    1. Confirm suspicions regarding a **computer security incident**.
    2. Gather **additional evidence** or relevant information.
    3. Verify the **extent of a security breach**.
    4. Identify **additional parties** involved.
    5. Establish a **timeline of network events**.
    6. Ensure **compliance with security policies**.
       
- Network-based analysis fills gaps where **host-based auditing** may fail.
    

---

**3. Other Forms of Evidence**

- This category includes **testimonies** and information gathered from individuals during investigations.

**Important Note:**  
Computer forensic experts can **retrieve data from various storage systems and operating systems**, even when anti-forensic tools are deployed. Using specialized forensic tools, experts can:

1. Retrieve data from **seemingly inaccessible** storage media.
2. Access **active** data stored on devices.
3. Recover **deleted** files.
4. Extract **inactive or unused** data from various storage devices.
5. Access **password-protected** and **encrypted** files.
6. Gather data from **databases, contact managers, electronic calendars, and other relevant software**.

---
