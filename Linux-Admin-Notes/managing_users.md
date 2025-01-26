## Understanding Users

In Linux, user management is a crucial aspect of system administration. A user is essentially an entity that can log into the computer system and perform tasks based on the permissions granted to them. The Linux operating system stores user-related information in a couple of key files: `/etc/passwd` and `/etc/shadow`.

### /etc/passwd File

This file contains basic information about each user on the system, including:

* **Username**: The name that the user utilizes for logging in.
* **User ID (UID)**: A unique numeric identifier associated with the user.
* **Group ID (GID)**: A unique numeric identifier for the primary group of the user.
* **Home Directory**: The directory where the user is taken upon logging in. This is usually where personal files and configurations are stored.
* **Default Shell**: The default program that is launched when a user logs in. Typically, this is a command-line shell like bash or sh.

Although `/etc/passwd` does have a field for passwords, modern systems don't store the actual password here. Instead, they use a placeholder (often 'x') and keep the real password data in the `/etc/shadow` file.

To view the content of this file, you can use:

```bash
less /etc/passwd
```

If you want a concise list of all user names in the system, use the following:

```bash
awk -F: '{ print $1}' /etc/passwd | uniq
```

This command reads the /etc/passwd file, parses it using the colon as a delimiter, and prints the first field (i.e., usernames). The uniq command ensures there are no duplicates in the list.

### /etc/shadow File

The `/etc/shadow` file is more security-sensitive as it contains encrypted passwords and other crucial data related to user authentication, such as:

* **Encrypted Password**: The actual password in encrypted form.
* **Password Expiration:** Details about when the password was last changed and when it will expire.
* **Password History**: Information to prevent users from reusing recent passwords.

Because of the sensitive nature of its content, only the root user or users with appropriate privileges can access this file.

To inspect its content:

```bash
less /etc/shadow
```

## The Superuser (root)

The root user's primary purpose is to handle system administration tasks, from installing software system-wide to modifying system configurations. A few key points to remember:

- **Login Name**: Typically, the root user's login name is `root`.
- **Password Access**: A password is typically required to access the root account. This password should be meticulously chosen to ensure it's strong and resilient against brute-force attacks.

🔴 **Caution**: The immense power vested in the root account means you need to exercise caution. For instance, the command `rm -rf /*` executed as root will erase all files in the root directory, rendering the system unusable.

### Adding a User to the sudo Group

Rather than logging in directly as root, many Linux users prefer to employ `sudo` — a command that allows permitted users to execute a command as the superuser.

I. On Debian and its derivatives:

```bash
usermod -aG sudo adam
```

II. For RedHat-based distributions, the equivalent group is wheel:

```bash
usermod -aG wheel adam
```

### Configuring sudo Access

After adding the user to the correct group, it's necessary to edit the `/etc/sudoers` file to grant sudo access. The safest way to do this is via the visudo command, which prevents saving a corrupted sudoers file.

Uncomment (or add) the following line to grant the group sudo access:

```bash
%wheel ALL=(ALL) ALL
```

### Granting Limited sudo Privileges

For enhanced security, you might want to allow a user to execute only specific commands as the superuser.

To achieve this, use the visudo command to edit the `/etc/sudoers` file. For instance, if you want the user adam to be able to reboot the system without a password prompt:

```bash
adam ALL = NOPASSWD:/sbin/reboot
```

🔴 **Caution**: Always use the visudo command when editing the `/etc/sudoers` file. This utility ensures the file's integrity, preventing potentially catastrophic errors. A misconfigured sudoers file can lock you out of system-level tasks, which could be devastating.

## Switching Between Users

There are times when it's necessary to change from one user to another without logging out. This is especially useful for administrators and developers who might need to access different user environments or run specific commands with varied privileges. The `su` (Substitute User) command facilitates this switch.

### Using the su Command

I. Switching to the Root User

By default, if you simply enter the `su` command without any arguments, you will be prompted for the root password and, upon successful authentication, granted a shell with root privileges.

```bash
su
```

II. Switching to a Specific User

If you want to switch to a specific user account, provide that username as an argument to the `su` command. For instance, to switch to the user named adam:

```bash
su adam
```

You'll typically be prompted for adam's password unless you are the root user, who can switch to any account without a password.

III. Executing a Single Command as Another User

The `-c` option allows you to run a specific command as another user. Once the command finishes executing, you're returned to your original session. The command's output will be displayed in your current terminal.

For instance, to execute the whoami command (which prints the username of the current user) as adam:

```bash
su adam -c "whoami"
```

This will print adam if the switch was successful.

### Advanced Tips

I. Preserving the Environment

By using the `-` or `-l` option with `su`, you can switch to another user and also load that user's environment:

```bash
su - adam
```

This provides a login shell, meaning it mimics a full login as adam, loading adam's shell startup files and environment variables.

II. Passwordless Switch

If you're the root user or have the necessary sudo privileges, you can switch to another user without needing their password. However, it's essential to be careful with such operations to maintain system security and integrity.

## Managing Users in Linux

User management is an essential part of system administration. Ensuring users can access what they need—and only what they need—keeps your system secure and organized.

### Adding New Users

I. Using `useradd` Command

The `useradd` command provides a quick way to create a new user. At its most basic:

```bash
useradd adam
```

However, there are several flags you can use for customization:

- `-m`: Creates a home directory for the user.
- `-u`: Specifies a unique User ID (UID).
- `-G`: Adds the user to one or more supplementary groups.

So, to create a user named adam with a home directory:

```bash
useradd -m adam
```

II. Using `adduser` Command

On many systems, `adduser` is a more user-friendly front-end to `useradd`. It often guides you through the user creation process by prompting for relevant details:

```bash
adduser adam
```

However, keep in mind that `adduser` may not be available on every Linux distribution. If you're scripting user creation across multiple systems, `useradd` is a safer bet.

### Setting and Changing User Passwords

Using `passwd` Command:

The passwd command allows you to set or change a user's password. For instance, to change the password for the user adam:

```bash
passwd adam
```

Follow the prompts to input and confirm the new password.

### Setting Password During User Creation

If you'd like to set a password during the user creation process, you can use the `-p` flag with the `useradd` command. However, note that the password should be in encrypted form:

```bash
useradd -m -p encrypted_password adam
```

If you're unsure how to generate an encrypted password, consider creating the user first and then immediately setting the password using passwd.

## Group Management

In Linux, groups serve as a mechanism to organize users and define their permissions collectively. By grouping users, administrators can easily manage permissions for multiple users simultaneously, simplifying the task of ensuring that users have the correct access to system resources.

### Viewing Existing Groups

To list all the groups present on your system, display the contents of the `/etc/group` file:

```bash
cat /etc/group
```

Each line represents a group, detailing the group name, password (usually not used), Group ID (GID), and a list of users belonging to that group.

### Visualization of Users and Groups

**Example Users and Groups:**

```
Users:
- alice (UID 1001)
- bob (UID 1002)
- charlie (UID 1003)

Groups:
- staff (GID 2001)
- developers (GID 2002)
- admins (GID 2003)
```

**User to Group Mapping:**

```
+--------+-------------------+
| User   | Groups            |
+--------+-------------------+
| alice  | staff, developers |
| bob    | staff             |
| charlie| admins            |
+--------+-------------------+
```

### Creating and Managing Groups

I. Adding a New Group

To introduce a new group, utilize the `groupadd` command:

```bash
groupadd admins
```

II. Adding a User to a Group

To associate a user with a group, use the `usermod` command combined with the `-aG` flags:

```bash
usermod -aG admins adam
```

Here, adam is added to the admins group.

III. Removing a User from a Group

To remove a user from a group, use the `gpasswd` command paired with the `-d` flag:

```bash
gpasswd -d adam admins
```

Now, adam is removed from the admins group.

### Adjusting File or Folder Ownership

Permissions are closely associated with ownership. Therefore, understanding how to modify the ownership of files and directories is crucial.

I. Changing the Owner

To reassign the ownership of a file or directory, use the `chown` command:

```bash
chown adam file.txt
```

Here, adam becomes the new owner of file.txt.

II. Altering Group Ownership

The `chgrp` command lets you redefine the group associated with a file or directory:

```bash
chgrp admins file.txt
```

Now, file.txt belongs to the admins group.

III. Simultaneous Ownership Changes

The `chown` command can also modify both user and group ownership simultaneously. Separate the user and group by a colon:

```bash
chown adam:admins file.txt
```

Using this command sets adam as the owner and assigns the "admins" group to the file.txt.

## User ID and Group ID

In Unix-like systems, each user and group is uniquely identified by a numerical identifier: User ID (UID) for users and Group ID (GID) for groups. These identifiers play a crucial role in maintaining security, permissions, and ownership within the system.

UID and GID in System Files:

- `/etc/passwd`: Stores details about users, including their UIDs. Each line represents a user account.
- `/etc/group`: Contains information about groups, including their GIDs.

When users create files or directories, the system attributes ownership to the corresponding UID and GID of the user and their primary group.

### Permissions and Ownership

UIDs and GIDs are central to the Unix permissions model:

- The `chown` command alters ownership based on UIDs and GIDs.
- The `chmod` command adjusts file and directory permissions, enabling different levels of access to owners, groups, and others.

The root user is especially notable, possessing a UID and GID of 0. With unmatched privileges, root can access and modify any system resource, making it imperative to exercise caution when operating as this user.

### Retrieving UID and GID

I. For a User

Use the `id` command to display a user's UID, GID, and the groups they're a member of:

```bash
id adam
```

Typical output might resemble:

```
uid=1000(adam) gid=1000(adam) groups=1000(adam),4(adm),24(cdrom),27(sudo),46(plugdev),113(lpadmin),128(sambashare)
```

This shows the user's UID (uid), primary group GID (gid), and secondary group memberships (groups).

II. For a Group

The `getent` command reveals a group's GID:

```bash
getent group admins
```

Typical output:

```
admins:x:1001:adam
```

Here, the GID is the third field, while the group members are listed in the last field.

### Modifying UID and GID

I. Change User's UID

The `usermod` command, combined with the `-u` flag, allows to change a user's UID:

```bash
usermod -u 1001 adam
```

II. Change Group's GID

The `groupmod` command, paired with the `-g` flag, facilitates GID modification:

```bash
groupmod -g 1001 admins
```

### Challenges

1. Display your current username and use the `id` command to retrieve your unique UID, GID, and any groups you belong to. Discuss the significance of these identifiers and how they relate to user identity and access control on a Linux system.
2. Explain the purpose and capabilities of the root user. Describe how you can temporarily gain root privileges using `sudo` without fully switching to the root user account, and discuss when and why this approach is preferred over a full root login.
3. Obtain the necessary permissions to view the `/etc/shadow` file. Locate the entry corresponding to your user in this file, and explain the purpose of the `/etc/shadow` file, including what information it stores and why it’s restricted to privileged users.
4. Review the `/var/log/auth.log` file to identify users who have recently logged in, and use `grep` to extract instances where users have invoked the `sudo` command. Explain how monitoring login and sudo activity contributes to system security and auditing.
5. Compile a list of users currently logged in to the system, organizing it alphabetically, and detail the command each user is currently executing. Discuss how monitoring active users and their actions can be useful for system management and security.
6. Create a group named "studygroup" and add your user to it. Then, create two more users, such as "alice" and "bob," and add them to the group. Set up a directory with read and write permissions exclusively for "studygroup" members, and test access by creating and modifying files within it. Finally, remove the extra user accounts and explain how group-based permissions facilitate collaboration.
7. Grant a user without `sudo` permissions the ability to execute only the `shutdown` command. Test this setup to verify that the user can perform the action and discuss how restricted sudo access can allow users to perform specific administrative tasks without full privileges.
8. Describe the difference between locking a user account and nullifying its password. Demonstrate both actions using `usermod -L` and `passwd -d`, and discuss the effects on user access and account security.
9. Change the UID of a test user and the GID of a test group, reflecting on scenarios where it might be necessary to modify these IDs, such as resolving UID or GID conflicts. Explain how these changes can impact user access to files and other resources.
10. Designate a user with permissions to execute a limited set of commands with superuser rights. Verify these permissions by running the commands as the designated user. Discuss the risks of providing unrestricted sudo access and how selective command permissions can enhance security.
