A file system is a structure used by an operating system to organise and manage files on a storage device such as a hard drive, [solid state drive (SSD)](https://www.kingston.com/en/blog/pc-performance/benefits-of-ssd), or [USB flash drive](https://www.kingston.com/en/usb-flash-drives/usb-30). It defines how data is stored, accessed, and organised on the storage device. Different file systems have varying characteristics and are often specific to certain operating systems or devices. Here are some of the common file systems and their pros and cons.

### FAT (File Allocation Table), FAT16, FAT32

FAT is one of the oldest and simplest file systems. It was initially developed for MS-DOS and is still used in many removable storage devices. The two major versions of this system are FAT16 and FAT32. FAT uses a file allocation table to keep track of file locations on the disk. However, it lacks some advanced features like file permissions and journaling, making it less suitable for modern operating systems. FAT 16 was introduces in 1987 with DOS 3.31 while FAT32 was introduced with Windows 95 OSR2(MS-DOS 7.1) in 1996.

#### Advantages:

- **Simplicity:** This simplicity makes it easy to implement and use, making it suitable for devices with limited resources or compatibility requirements.
- **Data recovery:** Due to its simple structure, FAT file systems are relatively easy to recover in case of data corruption or accidental deletion.
- **Compatibility:** It can natively be read from and written to by Windows, MacOS and Linux operating systems without the need for third-party software.

#### Disadvantages:

- **Fragmentation:** Fragmentation occurs when file data is scattered across different parts of the disk, resulting in reduced performance. Regular defragmentation is required to optimise disk performance.
- **Lack of advanced features:** The newest version, FAT32, lacks several advanced features found in other file systems. It does not support file-level security permissions, journaling, encryption, or compression.
- **Volume name limitations:** The volume names for FAT16 and FAT32 cannot exceed 11 characters and cannot include most non-alphanumeric characters.
- **File name limitations:** Files on a FAT16 file system cannot exceed 8.3 character for their files names. This means 8 characters plus a 3 character file extension.

### exFAT (Extended File Allocation Table)

exFAT is a file system introduced by Microsoft as an improved version of FAT32. It addresses some of the limitations of FAT32, allowing for larger file sizes and better performance. exFAT is commonly used for removable storage devices, such as [external SSDs](https://www.kingston.com/en/ssd/external), hard drives and SD cards as it provides compatibility across multiple operating systems. It was first introduced in 2006 as part of Windows CE 6.0.

#### Advantages:

- **Large file and partition size support:** exFAT supports much larger file sizes and partition sizes compared to FAT file systems. It can handle files bigger than 4 GB, making it suitable for storing large media files or disk images.
- **Efficient disk space utilisation:** exFAT improves disk space utilisation compared to older FAT file systems. It uses smaller cluster sizes, which reduces the amount of wasted disk space for smaller files.
- **Compatibility:** It can natively be read from and written to by Windows and MacOS operating systems without the need for third-party software.

#### Disadvantages:

- **Limited metadata support:** exFAT lacks some advanced features found in other modern file systems. It doesn’t support file-level security permissions, journaling, or file system-level encryption.
- **Fragmentation:** Like FAT file systems, exFAT is still susceptible to fragmentation. As files are created, modified, and deleted, fragmentation can occur leading to decreased performance over time.

### NTFS (New Technology File System)

NTFS is the default file system used by Windows NT-based operating systems, starting in 1993 with Windows NT 3.1, all the way up to and including Windows 11. It offers advanced features like file permissions, encryption, compression, and journaling. NTFS supports large file and partition sizes, making it suitable for modern storage devices. However, it has limited compatibility with non-Windows operating systems.

#### Advantages:

- **Security and permissions:** NTFS provides a solid security model with file-level permissions. It allows you to set permissions for individual files and folders, controlling access rights for users and groups.
- **Trim support on solid-state drives (SSDs):** TRIM informs the drive about unused data, which allows the SSD to erase and prepare the space for future writes. TRIM is enabled by default, when NTFS file system is chosen to maintain its performance.

#### Disadvantages:

- **Disk errors and repairs:** Although NTFS is designed to be reliable, disk errors can still occur. When encountering disk errors, NTFS repairs can be time-consuming and may require special tools.
- **Fragmentation:** Over time, NTFS file systems can become fragmented, especially as files are created, modified and deleted. Fragmentation can lead to decreased performance as the system needs to access scattered file fragments.

### APFS (Apple File System)

APFS is a file system developed by Apple for macOS, iOS, and other Apple devices. It is designed to optimise performance and compatibility with Apple's hardware and software. APFS includes features like cloning, file-level encryption and improved performance on solid-state drives. It was introduced with macOS 10.13 in 2017.

#### Advantages:

- **Enhanced performance:** APFS offers improved performance compared to its predecessor, HFS+. It makes use of techniques such as copy-on-write, space sharing, and optimised metadata handling to improve read and write speeds.
- **Data security:** APFS includes built-in data integrity features such as checksums for metadata and file contents. This helps detect and prevent data corruption. It also supports native encryption, allowing users to encrypt their data at this level, improving security and protecting sensitive information.

#### Disadvantages:

- **Trim support on solid-state drives (SSDs):** While APFS supports [trim commands for SSDs](https://www.kingston.com/en/blog/pc-performance/ssd-garbage-collection-trim-explained), it may not be as efficient compared to other file systems. Trim is responsible for optimising the performance and lifespan of SSDs by efficiently managing the blocks of data.
- **Third-party software support:** Some older third-party software or utilities may not fully support APFS or have limitations when working with the formatted drives. It’s important to ensure that important software or tools are compatible with APFS before moving to the file system.
- APFS cannot be read or written by a Windows PC without third-party software.

### HFS, HFS+ (Hierarchical File System)

HFS is the file system initially used by Apple computers. It has since been replaced by HFS+ and APFS. HFS uses a hierarchical directory structure and supports features like metadata and resource forks for storing additional file information. It is compatible with older Mac systems. HFS was introduced in 1986 with System 2.1 for the Mac Plus. HFS+ was introduced in 1998 with Mac OS 8.1 and phased out in favour of APFS in 2019 with macOS 10.15.

#### Advantages:

- **Simplicity:** HFS has a relatively simple and straightforward structure, making it easy to implement and understand.
- **Metadata support:** HFS introduced the concept of metadata, allowing the storage of additional information about files, such as creation and modification dates, file type, and resource forks.

#### Disadvantages:

- **Lack of advanced features:** HFS lacks several advanced features found in more modern file systems. It does not support file-level security permissions, journaling, file compression, or encryption.
- **Limited file and partition size support:** HFS has limitations on file size and partition size. It can handle files up to 2GB in size and supports partition sizes up to 2TB.
- **Files get corrupted outside of the file system:** When some types of files (especially ones without file extensions) are copied from HFS or HFS + to most other file systems listed here, it will not include the resource fork, making the copied files not readable again if and when it is reintroduced back to HFS unless they are.zip or.sit archived first.

### Ext4 (Fourth Extended File System)

A widely used file system in the Linux operating system. It is the successor to Ext3 and offers several improvements in terms of performance, scalability, and reliability. Ext4 is the default file system for many Linux distributions. It was first introduced in 2003.

#### Advantages:

- **Journaling:** The journal keeps track of changes before they are committed to the disk, enabling faster recovery in case of power failures or system crashes. It reduces the risk of data corruption and ensures the file system remains consistent.
- **Increased file and partition size:** Ext4 supports significantly larger file and partition sizes compared to its predecessors.

#### Disadvantages:

- **Fragmentation:** Like most file systems, Ext4 is susceptible to fragmentation. Over time, as files are created, modified, and deleted, fragmentation can occur, leading to decreased performance.
- **Limited scalability:** While Ext4 supports larger file and partition sizes compared to its predecessors, it has certain limitations when it comes to extreme scalability.

File systems are essential components of computing systems. They provide the base for data organisation, storage and retrieval ensuring seamless operation. As technology advances file systems will continue to evolve, adapting to storage needs and enhancing data management capabilities.

