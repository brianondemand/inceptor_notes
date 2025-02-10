
![linux-directory-structure](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux-directory-structure.png&w=3840&q=75)

For any person, who does not have a sound knowledge of **Linux Operating System** and **Linux Directory Structure**, dealing with the files and their location, their use be horrible, and newbie may really mess up.

This article aimed to provide the information about **Linux Directory Structure**, some of the **important directories**, their **usability** and **location**.

## Linux Directory Structure

In Linux and many other operating systems, directories can be structured in a tree-like hierarchy. The linux directory structure is well defined and documented in the Linux Filesystem Hierarchy Standard (FHS). Referencing those directories when accessing them is accomplished by using the sequentially deeper directory names connected by forward slashes `/` such as `/var/log` and `/var/spool/mail`. These are called paths.

**List of Linux Directories With Explanation**

### Root Directory (**`/`**)

Everything on your Linux system is located under (`/`) directory.

### Essential user binaries (`/bin`)

Contains program that must be present when the system is mounted (started) in single-user mode, to provide basic functionality for the user (commands like `cp`, `cd` `...`).

### Static boot files (**`/boot`**)

Contains the static bootloader and kernel executable and configuration files required to boot a linux computer

### Device files (**`/dev`**)

This directory contains the device files for every hardware device attached to the system. These are not device drivers, rather they are files that represent each device on the computer and facilitate access to those devices.

### Config files (**`/etc`**)

Contains the local system configuration files for the host computer.

### Home folders (**`/home`**)

Contains folder for each user -- where user data and user specific config files are.  
E.g user Hkr has home folder located at `/home/hkr`.

### Essential shared libraries (**`/lib`**)

Contains libraries needed by the essential binaries in `/bin` and `/sbin`.  
Libraries needed by `/usr/bin` are located in `/usr/lib`.

### Recovered files (**`/lost + found`**)

If files system crashes, any corrupted files will be placed here. On the next boot you can try to recover.

### Optional packages (**`/opt`**)

Contains subdirectories for **optional**, **add-on monolithic** software packages, like third party software (java, etc) --meaning these software could be installed in one place, no need for dependencies from `/lib` or other directories.

### Root home (**`/home`**)

Home directory of **root user** -- this is a special case -- NOT located in `/home/root`, but under system root directory `/`.

### System admin binaries (**`/sbin`**)

Contains essential binaries that are intended to be run by root user -- normal user has no access to this

### Temporary files (**`/tmp`**)

Where applications store temporary files -- they are deleted when system is restarted.

### User binaries & read-only data (**`/usr`**)

- Stands for Universal System Resources
- Contains applications and files used by USERS (rather than by the SYSTEM) -- such as user commands (e.g `pip`, `python`, `npm`).
- Non essential binaries are in `/usr/bin` rather than `/bin`.  
Non essential admin binaries are in `/usr/sbin` rather than `/sbin`.  
Libraries for non essential binaries are in `/usr/lib` rather than `/lib`.
- Locally compiled applications will be installed in `/usr/local` by default so that they don't mess up the rest of the system. E.g: you have your source code, then you compile your source code, the binary goes into `/usr/local/bin`.

### Variable data files (**`/var`**)

- Where **system programs** store runtime information like system logging, user tracking, caches, or any other files that **system programs** create and manage
- E.g `/var/cache`, `/var/cache/man`, `/var/cache/fonts`, `/var/log`, `/var/www`.
- Files in here are NOT automatically cleaned so this could be a good place for storing information about system behavior.
- The system must be able to write to this during operation.

### Removable media (**`/media`**) -- not common

Contains subdirectories where removable media devices inserted into the computer are mounted.

### Temporary Mount points (**`/mnt`**)

- When mounting certain system files from a physical device on to the linux machine, they will be in one of the subdirectories in `/mnt`.
- Usually for `media/removable_devices`, they will be mounted to `/media`, whereas `/mnt` is usually for partitioned hard drive.

### Kernel & process files (**`/proc`**)

Similar to `/dev`, it doesn't contain standard files --it contains information about running process with a particular pid (process id) in a special type of file.

### Service data (**`/srv`**) --not common

- Contains data for services provided by the system or server specific services data.
- E.g if you want to serve a static website, your static website, your static html files should be in here.

### Application state files (**`/run`**)

Contains system's run-time variable data since last boot --such as logged in user, running daemons.