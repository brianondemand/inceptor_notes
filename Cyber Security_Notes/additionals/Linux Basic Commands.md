
![linux-basic-commands](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands1.png&w=3840&q=75)

Are you new to Linux or just a little rusty? Here are all the commands you’ll need to know. Think of this as an essential reference for the Linux terminal. This applies to the macOS command line, too.

## Linux Basic Commands

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

### 11\. `sudo` Command

Short for **"SuperUser Do"**. this command enables you to perform task that require administrative or root permission.

Using `sudo` instead of login in as root is more secure because you can grant limited administrative privileges to individual users without them knowing the root password.

To use `sudo`, simply prefix the command with `sudo`:

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

### 15\. `useradd` and `passwd` Command

The `useradd` command is used to add a new user to the system.

To create a new user account, invoke the `useradd` command followed by the username:

![useradd-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands23.png&w=3840&q=75)

Once the user is created, set the user password by running the `passwd` command:

![passwd-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands24.png&w=1920&q=75)

### 16\. `userdel` Command

In Linux, you can delete a user account using the `userdel` command.

To delete a user account named pass the user name to the `userdel` command:

![userdel-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands25.png&w=1920&q=75)

Use the `-r` (-remove) option to remove the user's home directory and mail spool:

### 17\. `groupadd` and `groupdel` Command

To create a new group, invoke the `groupadd` command followed by the group name:

To remove a group, use the `groupdel` command with the group name as argument:

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

### 19\. `grep` Command

Another basic Linux command that is undoubtedly useful for everyday tasks is the `grep` command. It lets you search through all the text in a given file.

![grep-command](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Flinux_basic_commands27.png&w=1920&q=75)

---