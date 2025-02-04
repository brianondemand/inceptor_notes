
## GPT (GUID Partition Table)

**GPT (GUID Partition Table)** is a modern partitioning scheme that is part of the **UEFI (Unified Extensible Firmware Interface) standard**. It replaces the older **MBR (Master Boot Record)** system and is designed to support **larger storage devices and better security**.

**Key Features of GPT:**

- **Supports very large disks** (over **2TB**, up to **9.4 Zettabytes**)
- **Allows up to 128 partitions** per drive (MBR allows only 4 primary partitions)
- **Uses GUIDs (Globally Unique Identifiers)** to uniquely identify partitions
- **Provides redundancy** by storing multiple copies of the partition table across the disk
- **More reliable** since it includes built-in error detection and recovery features
- **Required for UEFI boot mode** (modern computers use UEFI instead of BIOS)
- **Supports Secure Boot**, making it more secure against boot-level malware

**Example:** Most modern **Windows 10/11**, macOS, and Linux installations **use GPT** for better compatibility and security.

----
## Master Boot Record (MBR)

Master boot record is the information present in the first sector of any hard disk. It contains the information regarding how and where the Operating system is located in the hard disk so that it can be booted in the RAM.

MBR is sometimes called master partition table because it includes a partition table which locates every partition in the hard disk.

Master boot record (MBR) also includes a program which reads the boot sector record of the partition that contains operating system.

  
![os Master boot record](https://images.javatpoint.com/operating-system/images/os-master-boot-record.png)  

---

**Key Features of MBR:**

- **Supports drives up to 2TB** (cannot handle larger storage)
- **Allows only 4 primary partitions** (or 3 primary + 1 extended partition with logical drives)
- **Stores partitioning and boot information in the first 512 bytes of the disk**
- **Less fault-tolerant** than GPT (if the MBR sector gets corrupted, the system may not boot)
- **Compatible with older BIOS-based systems** (before UEFI became common)

**Example:** **Windows XP, older Linux distributions, and legacy computers** often use MBR because


---
## What happens when you turn on your computer?

Due to the fact that the main memory is volatile, when we turn on our computer, CPU

cannot access the main memory directly. However, there is a special program called as BIOS stored in ROM is accessed for the first time by the CPU.

BIOS contains the code, by executing which, the CPU access the very first partition of hard disk that is MBR. It contains a partition table for all the partitions of the hard disk.

Since, MBR contains the information about where the operating system is being stored and it also contains a program which can read the boot sector record of the partition, hence the CPU fetches all this information and load the operating system into the main memory.

---
### ** When to Use GPT or MBR?**

|**Use Case**|**Recommended Partition Scheme**|
|---|---|
|**Modern PCs (Windows 8, 10, 11, Linux, macOS)**|✅ **GPT**|
|**Large storage drives (2TB+ SSD/HDD)**|✅ **GPT**|
|**Older systems (Windows XP, 7, legacy BIOS PCs)**|✅ **MBR**|
|**Booting from UEFI Mode**|✅ **GPT**|
|**Booting from Legacy BIOS Mode**|✅ **MBR**|
|**Multi-OS Boot Compatibility (Windows + Linux)**|✅ **GPT** (if UEFI-supported)|

---

