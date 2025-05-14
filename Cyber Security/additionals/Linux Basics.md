
Before we go on to the list of commands, you need to open the command line first. you can use `CTRL` + `ALT` + `T` to open the command line(terminal).

> **Note:** Linux’s shell is case sensitive. So, you have to type the name’s directory exactly as it is.

Here is a list of basic Linux commands:

### 1\. `pwd` Command

`pwd` stand for **Print Working Directory** . It show the directory that we are working on.

![pwd](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands2.png&w=1920&q=75)

### 2\. `ls` Command

The `ls` command is used to view the contents of a directory. By default, this command will display the contents of your current working directory.

![ls-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands3.png&w=1920&q=75)

If you want to see the content of other directories, type `ls` and then the directory’s path. For example, enter `ls /home/username/Documents` to view the content of Documents.

```bash
ls /home/username/Documents
```

![ls-command-other-directory](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands4.png&w=1920&q=75)

There are variations you can use with the ls command:

- **ls -R** will list all the files in the sub-directories as well
- **ls -a** will show the hidden files
- **ls -al** will list the files and directories with detailed information like the **permission**, **size**, **owner** etc.

### 3\. `cd` Command

The `cd` command hanges your current directory. In other words, it moves you to a new place in the filesystem. If you are changing to directory that is within your current directory,you can simply type `cd` and the name of the other directory.

![cd-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands5.png&w=1920&q=75)

if you are changing to a directory elsewhere within the filesystem directory tree, provide the path to the directory with a leading `/`.

```bash
cd /home/hkrhasan/Documents
```

![cd-command-other-directory](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands6.png&w=1920&q=75)

There are some shortcuts to help you navigate quickly:

- **cd ..** (with two dots) to move one directory up
- **cd ~** (with tilde) to move to your home directory
- **cd -** (with a dash) to move to the previous directory
- **cd** to go straight to the home folder

### 4\. `alias` Command

The alias command lets you give own name to a command or sequence of commands. You can type your short name, and the shell will execute the command or sequence of commands that you specify.

![alias-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands7.png&w=1920&q=75)

This sets up and alias called `list` that will execute the `ls -al` command.

---

## Files & Directories


### 5\. `touch` Command

The `touch` command is used to update the timestamps on existing files and directories as well as create new, empty files.

To create a file, specify the name of as an argument:

![touch-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands8.png&w=1920&q=75)

To update timestamps on an existing file

![touch-command-update](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands9.png&w=1920&q=75)

### 6\. `cat` Command

The `cat` command prints the contents of one or more files and merge (concatenate) files by appending one file's to the end of another file.

To display the contents of a file on the screen, pass the file name to `cat` as an argument.

![cat-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands10.png&w=1920&q=75)

Join two files `file1.txt` and `file2.txt`, and stores the ouput of them in a new `file3.txt`.

```bash
cat file1.txt file2.txt > file3.txt
```

![cat-command-join](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands11.png&w=1920&q=75)

Here are other ways to use the cat command:

- **cat -n** to display the line number with content
- **cat > filename** to create a new file
- **cat filename | tr a-z A-Z > output.txt** to convert a file content lowercase to uppercase
- **cat -e** to display the file with end of line character

### 7\. `mkdir` command

In Linux, you can create new directories (also known as folders) using `mkdir` command.

To create a directory, pass the name of the directory as the argument to the command:

![mkdir-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands12.png&w=1920&q=75)

if you are creating a directory elsewhere within the filesystem directory tree, provide the path to the directory with a leading `/`.

```bash
mkdir /home/hkrhasan/Documents/data
```

![mkdir-command-other-directory](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands13.png&w=1920&q=75)

To create parent directories, use the -p option:

```bash
mkdir -p /home/hkrhasan/Documents/2021/data/
```

The command above creates the whole directory structure.

When `mkdir` is invoked with the `-p` option, it creates the directory only if it doesn’t exist.

### 8\. `cp` Commands

The `cp` command is used to copy files and folders from one location to another.

To copy a file in the current directory, use the source file as a first argument and the new file as the second argument:

```bash
cp file.txt copied_file.txt
```

![cp-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands14.png&w=1920&q=75)

To copy a file to another directory, specify the absolute or relative path to destination directory. When only the directory name is specified as a destination, the copied file will have the same name as the original file.

```bash
cp file.txt /home/hkrhasan/Documents/data
```

![cp-command-other-directory](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands15.png&w=1920&q=75)

By default, if the destination file exists, it will be overwritten.

To copy a directory, including all it's files and subdirectories, use the `-R` or `-r` option:

```bash
cp -R /home/hkrhasan/Documents/data /home/hkrhasan/Desktop/
```

![cp-command-directory](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands16.png&w=1920&q=75)

### 9\. `mv` Command

The `mv` command is used to move files and folders from one location to another.

For example, to move a file from the current directory to another directory, use the source file as a first argument and the new file/destination folder as the second argument:

```bash
mv file.txt /home/hkrhasan/Public/
```

![mv-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands17.png&w=1920&q=75)

To rename a file you need to specify the destination file name:

```bash
mv file.txt /home/hkrhasan/Public/new_file.txt
```

To move multiple files and directories at once, specify the destination directory as the last argument:

```bash
mv file1.txt file2.txt /home/hkrhasan/Public/
```

> The syntax for moving directories is similar to the syntax for moving files.

### 10\. `rm` Command

The `rm` command is used to delete files and directories.

By default, when executed without any option, `rm` does not remove directories.

To delete a file, use the `rm` command followed by the file name as an argument:

![rm-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands18.png&w=1920&q=75)

Use the `-d` option to remove one or more empty directories.

To remove non-empty directories and all the files and subdirectories inside them, use the `-r` option:

The `-f` option tells `rm` to prompt the user and to ignore nonexistent files and argument.


---


### 11\. `sudo` Command

Short for **"SuperUser Do"**. this command enables you to perform task that require administrative or root permission.

Using `sudo` instead of login in as root is more secure because you can grant limited administrative privileges to individual users without them knowing the root password.

To use `sudo`, simply prefix the command with `sudo`:

**Why You’re Asked for a Password When Using `sudo`**

When a user runs a command with `sudo`, the system prompts for their password to ensure that the action is authorized and intentional. 

This is a security feature to prevent unauthorized or accidental execution of administrative commands. 

Once authenticated, the system typically remembers this for a short duration, so you won't be prompted again immediately for subsequent `sudo` commands.

----

### 12\. `df` Command

Use `df` command to get a report on the system's disk space usage, shown in percentage and KBs. if you want to see the report in megabytes, type `df -m`.

![df-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands19.png&w=1920&q=75)

### 13\. `apt` Command

Advance Package Tool or APT is a package management system that used by Debian-based distributions.

There are several command-line package management tools om Debian-based distributions, with `apt` and `apt-get` being the most used ones.

Before installing a new package first, you need to update the **APT** package index.

The **APT** index is a database that holds records of available packages from repositories enabled in your system.

To upgrade the installed packages to their latest versions, run:

Installing packages is as simpe as running:

```bash
sudo apt install package_name
```

To remove an installed package, run:

```bash
sudo apt remove package_name
```

> \*\*tip1: \*\* if you are already login as root user you dont need to use `sudo` command.

> \*\*tip2: \*\* if you are using **Red Hat Linux and its derivatives such as CentOs and Fedora**, you can use `yum` or `dnf` command instead of `apt` command.



----

## Linux Permissions


### 14\. `chmod` Command

`chmod` is another Linux command used to change read, write, and execute permissions on files and directories.

Before using `chmod`, you need to know what type of permissions you set files and directories.

In Linux, each file is associated with an owner and a group and assigned with permissions access rights for three different classes of users:

- The file owner.
- The group members.
- Everybody else.

Three permissions type apply to each class:

- Read permission.
- Write permission.
- Execute permission.

This concept allows you to specify which users can read the file, write to the file, or execute the file.

**Order of Permission Triplets:**

- First digit: **Owner (User)**

- Second digit: **Group**

- Third digit: **Others**

To view the file owner and permissions, use the `ls -l` command.

![ls-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands20.png&w=1920&q=75)

There are two modes to assign permissions to files and directories:

1. Numeric Mode
- **r (read) = 4**
- **w (write) = 2**
- **x (execute) = 1**
- **no permissions = 0**

The permission number of a specific user class is represented by the sum of the values of the permissions for that group.

For example, to give the file's owner read and write permissions and only read permissions to group members and all other users, you would run:

![chmod-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands21.png&w=1920&q=75)

**Examples:**

| Command          | Meaning                              |
| ---------------- | ------------------------------------ |
| `chmod 777 file` | Read, write, execute for everyone    |
| `chmod 755 file` | rwx for owner, rx for group & others |
| `chmod 644 file` | rw for owner, r for group & others   |
| `chmod 600 file` | rw for owner only                    |
| `chmod 400 file` | read-only for owner                  |
| `chmod 000 file` | no permissions at all                |


2. Symbolic Mode In the Numeric mode, you change permissions for all 3 owners. In the symbolic mode, you can modify permissions for of specific owner. It makes use of mathematical symbols to modify the Unix file permissions.

| OPERATORS | DESCRIPTION |
| --- | --- |
| **+** | Adds a permission to a file or directory |
| **\-** | Removes a permission from a file or directory |
| **\=** | Sets the permission and overrides the permissions set earlier. |


The various owners are represented as –

- **u**: user/owner
- **g**: group
- **o**: other
- **a**: all

To give write permissions to group members, you would run:

![chmod-command-symbolic](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands22.png&w=1920&q=75)


When running `ls -la` in a terminal, you receive a detailed list of files and directories in the current directory, including hidden ones. The output includes a field between the permission string and the owner’s name. This number indicates how many hard links exist to the file or directory. For directories, this often includes links to `.` (itself), `..` (parent directory), and any subdirectories.

 Example output of `ls -la`:



```
-rw-r--r--  2 user group  4096 May 12 14:00 file.txt
```


- `-rw-r--r--` → File permissions

- `2` → **Link count**

- `user` → Owner

- `group` → Group

- `4096` → File size (in bytes)

- `May 12 14:00` → Last modified date

- `file.txt` → File name


---

## Working with Users & Groups


### 15\. `useradd` and `passwd` Command

The `useradd` command is used to add a new user to the system.

To create a new user account, invoke the `useradd` command followed by the username:

![useradd-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands23.png&w=3840&q=75)


```bash
sudo adduser username
```

Once the user is created, set the user password by running the `passwd` command:

![passwd-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands24.png&w=1920&q=75)


```bash
sudo passwd username
```

This will prompt you to enter and confirm the new password.


### 16\. `userdel` Command

In Linux, you can delete a user account using the `userdel` command.

To delete a user account named pass the user name to the `userdel` command:

![userdel-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands25.png&w=1920&q=75)

Use the `-r` (-remove) option to remove the user's home directory and mail spool:




### 17\. `groupadd` and `groupdel` Command


**Adding a User to a Group**

To give a user access to additional privileges or functionality, you may need to add them to a specific group. This is done using the `usermod` or `gpasswd` command. For example:

```bash
sudo usermod -aG groupname username
```

or:

```bash
sudo gpasswd -a username groupname
```

To confirm group membership, you can run:

```bash
groups username
```


**Removing a User from a Group**

If a user should no longer be part of a specific group, you can remove them using:

```bash
sudo gpasswd -d username groupname
```

Alternatively, you can use:

```bash
sudo deluser username groupname
```

After this, check again with the `groups` command to verify that the user is no longer part of the group.


**Removing a User from the System**

To delete a user account without deleting their home directory and files, you can use:

```bash
sudo deluser username
```

To delete the user and their home directory (which includes all personal files), use:

```bash
sudo deluser --remove-home username
```

Always be cautious when removing users, especially with the `--remove-home` option, as this will permanently delete their data.

---


### 18\. `chown` Command

The `chown` command is used to change the owner of a file or directory.

To change the owner of file, use the `chown` command followed by the user name of the new owner and the target file:

![chown-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands26.png&w=1920&q=75)

To change boththe owner and the group of a file, invoke the `chown` command followed by the new owner and group seprated by a colon( `:` ) with no intervening spaces and the target file:

```bash
chown newuser:newgroup file.txt
```

Use the `-R` (`--recursive`) option, to recursively change the owner of a directory and all of its contents:

```bash
chown -R newuser:newgroup dirname
```


#### UID and GID (User and Group Identification Numbers)

In Linux, users are identified by a User ID (UID), and groups are identified by a Group ID (GID). These numeric values are used internally by the system to manage permissions and ownership. UIDs below 1000 are usually reserved for system users or services, while regular users are assigned higher UIDs (such as 20154 or 20195). You can check a user’s UID and GID using the `id` command followed by the username.

---
### 19\. `grep` Command

Another basic Linux command that is undoubtedly useful for everyday tasks is the `grep` command. It lets you search through all the text in a given file.

![grep-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands27.png&w=1920&q=75)

---
## Important Files on Linux


#### Understanding the `/etc/passwd` File

The `/etc/passwd` file is a fundamental configuration file in Linux that stores essential information about user accounts. Each line in the file corresponds to a single user on the system. The format of each entry follows a colon-separated structure like so:

```
username:x:UID:GID:comment:home_directory:shell
```

The first field is the username. 

The second field, typically shown as an `x`, means that the actual password is stored securely in the `/etc/shadow` file, not here. 

The third and fourth fields are numeric values representing the user ID (UID) and group ID (GID). The UID uniquely identifies each user, while the GID represents their primary group. 

he fifth field is optional and used for user description or full name. 

The sixth field indicates the user's home directory (e.g., `/home/username`), and the last field specifies the default shell (e.g., `/bin/bash`) that the user is assigned upon login.


**Types of Users:**

| Type              | UID Range (Typical) | Purpose                                            |
| ----------------- | ------------------- | -------------------------------------------------- |
| **System Users**  | 1–999               | Run background services (e.g. `mysql`, `www-data`) |
| **Regular Users** | 1000+               | Created by you or by apps for login use            |
| **Root User**     | 0                   | Superuser                                          |

The `x` in the second field of each line **does not represent the actual password**.

Instead, it means: "The **encrypted password** is stored in `/etc/shadow`, not here."

- Originally, `/etc/passwd` used to store hashed passwords in this field.
    
- But since `/etc/passwd` is **world-readable** (anyone can view it), storing password hashes there became a security risk.
    
- Now, most modern Linux systems store password hashes in `/etc/shadow`, which is **only readable by root**.

**How to See Only View Created Users Only:**

```bash
awk -F: '$3 >= 1000 && $1 != "nobody" { print $1 }' /etc/passwd
```

- This lists users with UID ≥ 1000, which are usually **real login users**.


Most of Users can’t log in:

They have their shell set to `/usr/sbin/nologin` or `/bin/false`, which prevents login.

---
#### Understanding the `/etc/shadow` File

The `/etc/shadow` file is used for storing encrypted password information and additional password-related settings for users. Each line represents a user and contains several fields separated by colons. 

The second field contains the encrypted password. If the field starts with `$`, it indicates the hashing algorithm used. 

For example, `$6$` refers to SHA-512 hashing, while `$y$` indicates the use of Yescrypt, which is commonly used in newer Linux distributions like Kali.

The remaining fields specify password aging information such as the number of days since the last password change, the minimum and maximum days between password changes, and warning/inactive/expiration periods. 

|Value|Meaning|
|---|---|
|`$6$...`|Encrypted password using SHA-512 (the `$6$` indicates SHA-512)|
|`!`|Account is **locked** (no login allowed)|
|`*`|Password **not set** or **account disabled** (often system users)|
|blank (`""`)|No password required (insecure)|

**Example:**

```
johndoe:$6$sK3j8...:19407:0:99999:7:::
```

- **`johndoe`** – username
    
- **`$6$...`** – hashed password using SHA-512
    
- **`19407`** – password last changed on day 19407 since Jan 1, 1970
    
- **`0`** – can change password anytime
    
- **`99999`** – password expires after ~273 years (never)
    
- **`7`** – start warning 7 days before password expires
    
- **`:::`** – inactive/expire/reserved fields are unset


**Only the root user can read this file, which enhances security by protecting sensitive password hashes.**

| Prefix | Algorithm                     |
| ------ | ----------------------------- |
| `$1$`  | MD5                           |
| `$2y$` | bcrypt (used in some systems) |
| `$5$`  | SHA-256                       |
| `$6$`  | SHA-512                       |

**Converting 20195 to a Human Date**

To convert that to a real-world date, you can use this command:

```bash
date -d '1970-01-01 +20195 days'
```



---

#### The `/etc/sudoers` File and Sudo Access

The `/etc/sudoers` file controls which users or groups can execute commands with superuser privileges using the `sudo` command. 

This file must be edited with caution using the `visudo` command, which checks for syntax errors to prevent system misconfigurations. In the file, you may see sections like `# User privilege specification`, under which you can grant users permission to run `sudo`.

```bash
sudo visudo
```

- Edit sudoers file.

**NEVER edit `/etc/sudoers` directly** without using the `visudo` command. This ensures syntax checks are done to prevent configuration errors, which could lock you out of `sudo`.

**Basic Format:**

A typical line in the `sudoers` file looks like this:

```
username ALL=(ALL:ALL) ALL
```

**username  hostname=(runas_user) command**

- `username` — the user granted `sudo` privileges.
    
- `hostname` — the machine or host where the rule applies (usually set to `ALL`).
    
- `runas_user` — the user that the command is run as (often `root`).
    
- `command` — the specific command(s) that the user is allowed to run.

This grants the specified user full `sudo` access. It’s also possible to add users to the `sudo` group and manage access through group-based rules.

**`sudoers` includes additional configuration files**, often located in `/etc/sudoers.d/`, which allows for modular management of sudo permissions.

#### Disabling `sudo` Access

If you want to prevent all users from using the `sudo` command, you can remove them from the `sudo` group or delete any individual rules in `/etc/sudoers` that grant them access. 

1. **Removing a user from the `sudo` group can be done using:**

```bash
sudo deluser username sudo
```

Once removed, the user will no longer be able to run commands with elevated privileges.

2. **Remove or comment out all existing `sudo` access rules** for other users and groups. This includes lines like:

```bash
#%sudo   ALL=(ALL:ALL) ALL
#%admin  ALL=(ALL:ALL) ALL
#username ALL=(ALL) ALL
```

- You can comment them out by adding `#` in front of these lines, so they don't have sudo privileges.

3. **Lock Down Sudo Access via sudoers.d** 

You can also manage sudo access in a more modular way by editing the sudoers file inside the /etc/sudoers.d/ directory. 

This keeps the main sudoers file cleaner and makes the management of user permissions easier.

```bash
sudo visudo -f /etc/sudoers.d/nosudouser
```

- Remove other users' sudo privileges by adding entries for them in /etc/sudoers.d/:
- In that file, you can disable them by adding:

```bash
username ALL=(ALL) NOPASSWD: /bin/false
```

#### Allowing Only One User to Use `sudo`

To ensure that only one user has `sudo` access, you must remove all others from the `sudo` group and from any relevant entries in the `/etc/sudoers` file. Then, you add the desired user to the `sudo` group using:

```bash
sudo usermod -aG sudo username
```

This ensures that only this user has administrative privileges.

**# User Privilege Specification:**

This section is typically where you **explicitly specify which users or groups** are allowed to use `sudo` and which commands they can run. If you want to give a **specific user** (`adminuser`) access to `sudo`, this is where you would add them.

**# Allow Members of Group sudo to Execute Any Command:**

This section controls **group-based access**. If you want to allow all members of a group (e.g., `sudo` group) to have `sudo` access, you would use this section.


#### Example of the /etc/sudoers file after modification:

```bash
# User privilege specification
root    ALL=(ALL:ALL) ALL
adminuser  ALL=(ALL:ALL) ALL

# Allow members of group sudo to execute any command
# %sudo   ALL=(ALL:ALL) ALL   # Commented out to disable sudo for group members

# Same for other groups like admin
# %admin  ALL=(ALL:ALL) ALL   # Commented out

```


- **`root ALL=(ALL:ALL) ALL`**: This is typically present and ensures the root user has full sudo access.

- **`adminuser ALL=(ALL:ALL) ALL`**: Explicitly grants `adminuser` full sudo access.

- **Commented-out group entries** (`%sudo ALL=(ALL:ALL) ALL`, `%admin ALL=(ALL:ALL) ALL`): These lines have been disabled to **remove sudo access** from those groups.



##### Configuring the Password Prompt when using sudo

If you want to **modify or remove** the password prompt (though not recommended for security reasons), you can adjust the `sudoers` file:

1. **To avoid password prompts for specific commands**:  
    You can configure `sudo` to not ask for a password for specific commands by editing the `/etc/sudoers` file.

```
username ALL=(ALL) NOPASSWD: /path/to/command
```

This allows `username` to execute the specified command without being prompted for a password.

2. **To avoid the password prompt for all `sudo` commands**:  


```
username ALL=(ALL) NOPASSWD: ALL
```

This grants `username` the ability to execute **any** command with `sudo` without being asked for a password, though this is highly discouraged for security reasons.