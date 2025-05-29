The `ps` command, short for Process Status, is a command line utility that is used to **display or view information related to the processes running in a Linux system**. As we all know, Linux is a multitasking and multiprocessing system. Therefore, multiple processes can run concurrently without affecting each other. The ps command lists current running processes alongside their PIDs and other attributes. In this guide, we are going to focus on ps command usage. It retrieves information about the processes from virtual files which are located in the /proc file system

## ps command without arguments

The ps command without arguments lists the running processes in the current shell

```
ps
```

**Output** ![ps command](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-command.png) The output consists of four columns `PID` - This is the unique process ID `TTY` - This is the typeof terminal that the user is logged in to `TIME` - This is the time in minutes and seconds that the process has been running `CMD` - The command that launched the process

## Viewing all the running processes in different formats

To have a glance at all the running processes, execute the command below `ps -A` **Output** ![ps -A command](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-A-command.png) or `ps -e` **Output** ![ps  -e command](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-e-command.png)

## View processes associated with the terminal

To view processes associated with the terminal run `ps -T` **Output** ![ps -T command](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-T-command.png)

## View processes not associated with terminal

To view all processes with the exception of processes associated with the terminal and session leaders execute `ps -a` A session leader is a process that starts other processes **Output** ![ps -a command](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-a-view-processes-not-associated-with-shell.png)

## Show all current running processes

To view all current processes execute

```
ps -ax
```

**Output** ![ps -ax command](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-ax-command.png) `-a` flag stands for all processes `-x` will display all processes even those not associated with the current tty

## Display all processes in BSD format

If you wish to display processes in BSD format, execute

```
ps au
```

OR

```
ps aux
```

**Output** ![ps aux](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-aux.png)

## To perform full format listing

To view a full format listing run

```
ps -ef
```

OR

```
ps -eF
```

**Output** ![ps -ef command](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-ef-command.png)

## Filter processes according to the user

If you wish to list processes associated with a specific user, use the `-u` flag as shown

```
ps -u user
```

For example

```
ps -u jamie
```

**Output** ![ps-u username command](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-u-username.png)

## Filter process by thread process

If you wish to know the thread of a particular process, make use of the `-L` flag followed by the PID For example

```
ps -L 4264
```

**Output** ![ps -L PID command](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-L-PID.png)

## Show every process running as root

Sometimes, you may want to reveal all processes run by the root user. To achieve this run

```
ps -U root -u root
```

**Output** ![ps-processes-owned-by-root](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-U-root-u-root-command.png)

## Display group processes

If you wish to list all processes associated by a certain group run

```
ps -fG group_name
```

Or

```
ps -fG groupID
```

For example

```
ps -fG root
```

**Output** ![ps -fG group_name](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-fG-group_name.png)

## Search Process PID

Chances are that usually don’t know the PID to a process. You can search the PID of a process by running

```
ps -C process_name
```

For example

```
ps -C bash
```

**Output** ![ps -c processname](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-c-process.png)

## Listing processes by PID

You can display processes by their PID as shown

```
ps -fp PID
```

For example

```
ps -fp 1294
```

**Output** ![ps -fp PID command](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-fp-PID.png)

## To display process hierarchy in a tree diagram

Usually, most processes are forked from parent processes. Getting to know this parent-child relationship can come in handy. The command below searches for processes going by the name apache2

```
ps -f --forest -C bash
```

**Output** ![ps -f --forest -C command](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-f-forest-C-bash.png)

## Display child processes of a parent process

For example, If you wish to display all forked processes belonging to apache, execute

```
ps -o pid,uname,comm -C bash
```

**Output** ![ps -o pid,uname,comm -C command](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-o-pidunamecomm-C-bash.png) The first process, which is owned by root is the main apache2 process and the rest of the processes have been forked from this main process To display all the child apache2 processes using the pid of the main apache2 process execute

```
ps --ppid PID no.
```

For example

```
ps --ppid 1294
```

**Output** ![ps --ppid PID no. command](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-ppid-PID-no..png)

## Display process threads

The ps command can be used to view threads along with the processes. The command below displays all the threads owned by the process with PID pid\_no

```
ps -p pid_no -L
```

For example

```
ps -p 1294 -L
```

**Output** ![ps -p pid_no -L](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-p-pid_no-L.png)

## Display a selected list of columns

You can use the ps command to display only the columns you need. For example,

```
ps -e -o pid,uname,pcpu,pmem,comm
```

The command above will only display the PID, Username, CPU, memory and command columns **Output** ![ps -e -o pid,uname,pcpu,pmem,comm](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-e-o-pidunamepcpupmemcomm.png)

To rename column labels execute the command below

```
ps -e -o pid=PID,uname=USERNAME,pcpu=CPU_USAGE,pmem=%MEM,comm=COMMAND
```

**Output** ![ps rename  columns](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-e-o-pidunameUSERNAMEpcpuCPU_USAGE.png)

## Display elapsed time of processes

Elapsed time refers to how long the process has been running for

```
ps -e -o pid,comm,etime
```

**Output** ![ps -e -o pid,comm,etime](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-e-o-pidcommetime.png) The -o option enables the column for elapsed time

## Using ps command with grep

the ps command can be used with grep command to search for a particular process For example

```
ps -ef  | grep systemd
```

**Output** ![ps and grep command](https://journaldev.nyc3.cdn.digitaloceanspaces.com/2019/01/ps-and-grep-command.png)

While we believe that this content benefits our community, we have not yet thoroughly reviewed it.If you have any suggestions for improvements, please let us know by clicking the“report an issue“ button at the bottom of the tutorial.