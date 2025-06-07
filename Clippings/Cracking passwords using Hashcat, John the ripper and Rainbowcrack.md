[Sitemap](https://medium.com/sitemap/sitemap.xml)

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*rp2FZ4EL_E1BIXj_UmFWYw.png)

Passwords can be a real problem. Weak, common, and guessable passwords are in widespread use, mainly because users don’t want to keep track of more complex passwords. Organizations establish policies that specify the length and complexity of acceptable passwords, but this can make users unhappy and can result in more frequent password reset requests. In small or medium-sized organizations, especially ones that employ a lot of creative people, sometimes password policies are loosely enforced or non-existent.

Passwords are usually encrypted for storage. Modern encryption algorithms are difficult to reverse, so tables and word lists of commonly used passwords have been compiled from collections of stolen credentials that are available on the dark web. These tables can really speed up password cracking.

We need to look carefully at authentication-related vulnerabilities especially around password strength and storage. There are many popular tools for reversing passwords that are stored as hashes. In this lab, we will get to know three of them. If we can get access to password files, we are likely to be able to reverse some of the stored hashes to recover the passwords in clear text. From there, we can potentially compromise many systems.

Here’s a breakdown of the tools we will use and how they help in cracking passwords:

1. **Hashcat**: Hashcat is a versatile and powerful password cracking tool that uses advanced algorithms to perform dictionary attacks, brute-force attacks, and hybrid attacks. Hashcat is known for its ability to harness the power of GPUs (Graphics Processing Units) for faster password cracking. In our lab, we will use Hashcat to perform dictionary-based attacks on password hashes by leveraging large wordlists that contain commonly used passwords, leaked password databases, and other popular guesses.
2. **John the Ripper**: John the Ripper (often just called “John”) is another well-known tool for cracking password hashes. It supports multiple hashing algorithms and is highly customizable. John can perform both dictionary attacks and brute-force attacks, making it a great tool for testing the strength of password hashes. In our lab, we will use John the Ripper to crack hashes using predefined wordlists, and we will also explore brute force techniques when the dictionary attacks do not yield results.
3. **RainbowCrack and Rainbow Tables**: RainbowCrack is a tool that uses precomputed tables (rainbow tables) to reverse cryptographic hash functions. Unlike traditional dictionary attacks, which rely on attempting each password one by one, rainbow tables store a large set of precomputed hash values for common passwords. This allows for faster cracking of hashes without needing to generate them on the fly. In our lab, we will explore how rainbow tables can be used to crack hash functions by matching hashes to those stored in a precomputed table.

In this lab, we will complete the following objectives:

- Part 1: Investigate Password Attacks
- Part 2: Crack Hashes with Hashcat Dictionary Attacks
- Part 3: Crack Hashes with John the Ripper Using Dictionary and Brute Force Attacks
- Part 4: Crack Hashes using RainbowCrack and Rainbow Tables

**Background / Scenario**

Passwords are vulnerable to attack. Passwords are usually stored as encrypted hashes. An attacker can capture the hashes sent over the network using sniffing tools or can gain access to the files containing password hashes on vulnerable systems. When the attacker has the hashes, they can then apply dictionary, rainbow table, and brute force attacks against them offline to crack the hash to recover the plaintext passwords. There are many password attack tools included with Kali Linux. This lab will look at three popular tools; Hashcat, John the Ripper, and RainbowCrack.

## Part 1: Investigate Password Attacks

- Log into Kali using kali as the username and password.
- Select Applications > 05 — Password Attacks.

In the Kali Password Attacks menu, which four subcategories of password attack tools are available?

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*24G7zhle5zVLSDtaQNKrgg.png)

**Offline Attacks, Online Attacks, Passing the Hash Attacks, Password Profiling & Wordlists**

Which tool is a Microsoft password cracker that uses rainbow tables? Which subcategory contains this tool? **Ophcrack, Offline Attacks**

Part 2: Crack Hashes with Hashcat Dictionary Attacks

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*QPjdVWHxUnHB-8P68IRbBw.png)

**Step 1: Create a file that contains MD5 hashes to be cracked.**

First, some MD5 hashes of passwords are needed. In an actual exploit, an attacker will have already compromised a vulnerable system to obtain a password file containing stored password hashes to be cracked offline. In this step you simulate this by creating a password file that contains the hashes you will crack in an upcoming step.

- In a terminal window, create five target hashes by entering the following commands at the prompt: The hashes generated are written to the my\_pw\_hashes.txt file. To view them type cat filename
![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*U0nT0sa9XklWZOdmUFRkOQ.png)

## Step 2: Start Hashcat in Kali.

Open a new Kali console and enter the command: man hashcat.

This opens the Hashcat manual.

- Review the options available in the first man page.
- What is specified with the -m and -a options? **The option -m defines the hashtype and -a defines the attack mode.**
![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*d6C1x3PRzUjhzXkcfrwxmA.png)

Using the hashcat man pages, which hash type and attack mode would you use to crack the password hashes in the my\_pw\_hashes.txt file? Explain.

**Because the hashes were created using md5sum, the option for hash types (-m) should be 0. The attack mode 0 (straight or dictionary) can be used in this instance.**

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*4BqVoroJznLZqoJ_mPbcuw.png)

**Step 3: View available wordlists.**

Kali comes with several wordlists built in. Hashcat needs to use a wordlist to crack the hashes.

1. To view the built-in wordlists, enter the command: ls -lh /usr/share/wordlists
![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*Jt3ZTzgd3Q3WdTsM-LuUvA.png)

This lists the wordlists that are distributed with Kali. We will use the rockyou.txt word list. The rockyou.txt wordlist is a password dictionary that contains more than 14 million passwords.

What needs to be done to the rockyou.txt.gz file before the wordlist text file can be used?

**The rockyou wordlist is in a zipped file (indicated by the.gz file extension). You will need to extract the text file from the compressed archive.**

Change the directory to /usr/share/wordlists by entering the command:

└─$ cd /usr/share/wordlists

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*O_z9jxhmMS72xwvLzYLV7g.png)

Extract the rockyou.txt.gz file using the gzip command:

└─$ sudo gzip -d rockyou.txt.gz

List the contents of the directory as was done previously using the ls command. Verify that the rockyou.txt file is now unzipped.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*oV_DAeFlWxENlaTg6sks3g.png)

Use the more command, followed by the file name, to view the contents of the file to see some of the passwords that hashcat will use to crack your hashes.

┌──(kali㉿Kali)-\[/usr/share/wordlists\]

└─$ more rockyou.txt

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*6sZ1FZJeZRDUTbj1-U80yg.png)

Wordlists for cracking hashes or brute forcing logins are often collected from password dumps that publicly disclose stolen user account information. Scroll through the output to get a sense of the file contents.

What seems to be a popular type of password? How could this trend be useful to a penetration tester?

**There seem to be a lot of first names in the list. A penetration tester could use OSINT tools to learn the names of family members of employees of the company. These names could be used to attempt logins and crack hashes**

- Press q or Ctrl-z to exit the file contents.
- Return to the home directory.
- ┌──(kali㉿Kali)-\[/usr/share/wordlists\]
- └─$ cd /home/kali

**Step 4: Crack hashes with Hashcat.**

To crack the hashes contained in the my\_pw\_hashes.txt file use the following command:

┌──(kali㉿Kali)-\[~\]

└─$ sudo hashcat -m 0 -a 0 -o cracked.txt my\_pw\_hashes.txt /usr/share/wordlists/rockyou.txt

- `**sudo**`: Run with superuser privileges.
- `**hashcat**`: Tool for password cracking.
- `**-m 0**`: Specifies MD5 hash type.
- `**-a 0**`: Dictionary attack mode.
- `**-o cracked.txt**`: Output file for cracked passwords.
- `**my_pw_hashes.txt**`: File containing hashes to crack.
- `**/usr/share/wordlists/rockyou.txt**`: Wordlist used for guessing passwords.

**Purpose**: This command uses Hashcat to attempt cracking MD5 hashes in `my_pw_hashes.txt` using passwords from the `rockyou.txt` wordlist, saving results in `cracked.txt`.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*uJCRdZci6YSQSHFEJesM0w.png)

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*au7gmGGi4vIF9L8qCHroNg.png)

This command outputs the cracked passwords in the new cracked.txt file.

To view the contents of the cracked.txt file and the plaintext password enter the command:

┌──(kali㉿Kali)-\[~\]

└─$ sudo cat cracked.txt

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*pZpsFOF1mcWrz37M95YBFw.png)

How many passwords were cracked? **Hashcat should quickly crack all five.**

**Summary of How Hashcat Cracked the Passwords**

**Password Hashes Obtained**:

- Hashes of passwords (MD5) were generated and stored in a file `my_pw_hashes.txt`.
- In real-world scenarios, attackers acquire such hashes from compromised systems.

**Hashcat Setup**:

- **Hash Type (**`**-m 0**`**)**: MD5 was used, as the hashes were created using `md5sum`.
- **Attack Mode (**`**-a 0**`**)**: A dictionary attack was selected to try all possible passwords from a precompiled list.

**Wordlist (**`**rockyou.txt**`**)**:

- The `rockyou.txt` wordlist, containing 14+ million passwords, was used as the dictionary of possible guesses.
- The file was unzipped and reviewed to verify its content.

**Cracking Process**:

- Hashcat iterated through the `rockyou.txt` wordlist, hashing each password and comparing it with the hashes in `my_pw_hashes.txt`.
- When a match was found, the plaintext password was “cracked” and saved.

**Output**:

- Cracked passwords were saved in a file called `cracked.txt`.
- Viewing the file revealed all five hashes were cracked successfully.

**Why It Worked:**

- **Simple Passwords**: MD5 is fast but outdated and susceptible to dictionary attacks.
- **Weak Hashes**: Many passwords in the wordlist matched the stored hashes.
- **Popular Wordlist**: The `rockyou.txt` list contains many commonly used passwords, including names, making it highly effective for cracking simple hashes.

**Part 3: Crack Hashes with John the Ripper Using Dictionary and Brute Force Attacks**

**Step 1: View the John the Ripper help file.**

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*uzPmXQyhMM-Yk9Uw94fKQA.png)

In a terminal window, enter the command: john -h to view the John the Ripper help file.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*jnLChbTYzlQgOMCOHmA3dA.png)

**Step 2: Crack hashes with John the Ripper.**

Use the following command to crack the hashes in the my\_pw\_hashes file. This may take some time.

┌──(kali㉿Kali)-\[~\]

└─$ john — format=raw-md5 my\_pw\_hashes.txt

**Breakdown:**

1. `**john**`: Runs **John the Ripper**, a popular password-cracking tool.
2. `**--format=raw-md5**`: Specifies that the hashes in the file `my_pw_hashes.txt` are in the **raw MD5 format** (simple MD5 hashes without salt).
3. `**my_pw_hashes.txt**`: The file containing the hashes to be cracked.

I aborted it after a while but john should crack most of them at the end

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*WpiXSdHiMFc2IFkr9HyfOA.png)

John shows the cracked passwords in orange. Which passwords were cracked with the password wordlist? **Password, and Letmein! Should be cracked right away as they are in the wordlists used by john.**

In this instance John uses a minimal password wordlist by default to quickly crack common passwords.

What does John the Ripper do if there are hashes it cannot crack with its wordlists? **John the Ripper switches to incremental strategies (brute force) on remaining hashes.**

If you let John continue to run long enough it will eventually crack the remaining passwords. (Note this may take 10–20 minutes) Press Ctrl-C or q to abort at any time after a few passwords have been cracked if desired.

**Step 3: Use larger wordlists.**

The default wordlist for John the Ripper is fairly small. John can use other wordlists, such as the rockyou.txt wordlist. It is also possible to download additional wordlists from the internet.

Use the following command to instruct John the Ripper to use the rockyou.txt wordlist.

┌──(kali㉿Kali)-\[~\]

└─$ john — wordlist=/usr/share/wordlists/rockyou.txt — format=raw-md5 my\_pw\_hashes.txt

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*ahE-Jb8ZXDtf2zi59mGrVg.png)

John was able to crack some passwords above shown in orange color.

**Step 4: Use brute force.**

To instruct John the Ripper to use only brute force cracking use the following command:

┌──(kali㉿Kali)-\[~\]

└─$ john — incremental my\_pw\_hashes.txt

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*SeASfWKOvlp8HF_YVKnLIw.png)

**Breakdown:**

1. `**john**`: Runs **John the Ripper**, a password-cracking tool.
2. `**--incremental**`: Enables **incremental mode**, where John tries all possible character combinations to generate passwords.
3. `**my_pw_hashes.txt**`: The file containing the hashes to be cracked

**Purpose:**

This command tells John to perform a **brute-force attack** on the hashes in `my_pw_hashes.txt`, systematically testing every possible password combination based on its predefined character sets.

**How It Works:**

- Incremental mode starts with shorter passwords and gradually increases their length.
- It tests combinations of letters, numbers, and symbols to find a match for the hashes.
- This method is comprehensive but slower than dictionary-based attacks, especially for longer or complex passwords.

Lets specify the hash to use since it detected multiple ones

command: john — incremental — format=Raw-MD5 my\_pw\_hashes.txt

Note, using brute force can take a very long time to crack password hashes. A powerful GPU can take many hours to crack a complex 8-character password.

MD5 is considered too weak to use. However, notice how long it takes to crack even one MD5 hash using brute force. Abort the process with Ctrl-C or q.

**Step 5: Show your cracked passwords.**

In this example, if you interrupted the password cracking process using john and the raw-md5 format, you can still review the cracked passwords using the — show option.

command: john — show — format=raw-md5 my\_pw\_hashes.txt

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*GNPsooCUUyXYmaBJfkPcbQ.png)

**Step 6: Experiment**

If you have time, try some complex passwords of varying lengths of 4 to 8 characters. Attempt to brute force crack the passwords with John the Ripper in incremental mode. Create a file containing password hashes and then run the tool.

**Summary of Cracking Hashes with John the Ripper Using Dictionary and Brute Force Attacks**

**Step 1: View the Help File**

- View the John the Ripper help file to understand available options and commands.

**Step 2: Crack Hashes with John the Ripper**

- John uses a wordlist to crack hashes. It starts by cracking common passwords (e.g., “Password”, “Letmein!”) found in the default wordlist.
- If some hashes cannot be cracked, John switches to a brute force method (incremental mode), which may take longer to finish.

**Step 3: Use Larger Wordlists**

- The default wordlist is small. You can use larger wordlists (e.g., rockyou.txt) to improve cracking success.
- Larger wordlists increase the chances of cracking more complex passwords.

**Step 4: Use Brute Force**

- If dictionary-based attacks fail, John switches to brute force, testing all possible combinations of characters. This method is slow but thorough, especially for longer or complex passwords.

**Step 5: Show Cracked Passwords**

- If you interrupt the cracking process, you can still view the cracked passwords using the `--show` option.

**Step 6: Experiment**

- Try cracking more complex passwords with varying lengths. This allows you to practice using John the Ripper and understand its cracking capabilities.

**Part 4: Crack Hashes using RainbowCrack and Rainbow Tables**

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*Z8DImUMYDEm9cIn2BWJpZg.png)

Note: RainbowCrack is not available in the VM using ARM CPUs (Apple M1/M2).

**Step 1: Install RainbowCrack.**

The RainbowCrack utility may need to be installed. Rainbow crack differs from hash cracking utilities that use brute force algorithms in that it uses rainbow tables to crack password hashes.

To install RainbowCrack enter the following command:

┌──(kali㉿Kali)-\[~\]

└─$ sudo apt install rainbowcrack

**Step 2: Creating rainbow tables with rtgen.**

Rainbow tables are ordinary files and can be created with RainbowCrack, or they can be downloaded from the internet. Creating a rainbow table can take a considerable amount of time and storage space as they are very large, ranging in size from 20GB to more than a terabyte.

Create a small simple rainbow table that will crack MD5 passwords of up to 3 characters with only lowercase letters.

The rtgen program is used to generate rainbow tables based on user specified parameters.

Enter the rtgen -h command and review the options.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*Zc0fTelc7bOW97oRfsGUGA.png)

The example rainbow tables are given at the bottom of the output.

Create a rainbow table by entering:

┌──(kali㉿Kali)-\[~\]

└─$ sudo rtgen md5 loweralpha 1 3 0 1000 1000 0

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*e7J-9skMXq5CIOWrizr8CA.png)

This command creates a rainbow table that can crack passwords that are three characters long and only consist of lower-case letters. The application created a fille with 1000 entries. Creating more complex rainbow tables can take significant time and use significant resources.

Verify the rainbow table is created. Display the contents of the rainbowcrack directory by entering the command:

┌──(kali㉿Kali)-\[~\]

└─$ cd /usr/share/rainbowcrack

┌──(kali㉿Kali)-\[/usr/share/rainbowcrack\]

└─$ ls

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*PWMrvK8k768Le50H8XilPQ.png)

The file with the.rt extension is our table

**Step 3: Sort the rainbow table**.

Next, the rainbow table must be sorted. Entering the command: sudo rtsort. at the prompt. (Note: be sure to include the space and the period after rtsort as part of the command)

┌──(kali㉿Kali)-\[/usr/share/rainbowcrack\]

└─$ sudo rtsort.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*ABA93DNc4A5Re8nziSW5CA.png)

Generate a hash for a simple 3-character password which can then be cracked. Enter the command: echo -n ‘dog’ | md5sum | awk ‘{print $1}’.

┌──(kali㉿Kali)-\[/usr/share/rainbowcrack\]

└─$ echo -n ‘dog’ | md5sum | awk ‘{print $1}’

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*RVg-p807vzDChDI4JOpq0Q.png)

06d80eb0c50b49a509b49f2424e8c805

Crack the hash with the rainbow table with RainbowCrack. At the prompt, enter the rcrack. -h 06d80eb0c50b49a509b492424e8c805 command.

┌──(kali㉿Kali)-\[/usr/share/rainbowcrack\]

└─$ rcrack. -h 06d80eb0c50b49a509b49f2424e8c805

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*kydZSpvkuOdeUjNWPIeqEg.png)

Within milliseconds RainbowCrack should crack the hash and reveal the password dog.

you can also crack hashes contained in a.txt file as was done in Part 1 of the lab. To create a.txt file with some hashes, enter the following commands at the prompt:

echo -n ‘fox’ | md5sum | awk ‘{print $1}’ > ~/my\_rainbow\_hashes.txt

echo -n ‘boo’ | md5sum | awk ‘{print $1}’ >> ~/my\_rainbow\_hashes.txt

echo -n ‘pop’ | md5sum | awk ‘{print $1}’ >> ~/my\_rainbow\_hashes.txt

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*7VPi1w1Hnj4MSXAmEtAuCQ.png)

To crack the hashes in the file, enter the rcrack. -l ~/my\_rainbow\_hashes.txt command at the prompt. The -l option tells rcrack to use a hash list file as input.

┌──(kali㉿Kali)-\[/usr/share/rainbowcrack\]

└─$ rcrack. -l ~/my\_rainbow\_hashes.txt

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*M1E3JiyUZuEPvpyLlAwCDQ.png)

All the 3 hashes were cracked and revealed to be fox, boo and pop

**Step 4: Explore resources to download rainbow tables.**

In addition to generating Rainbow Tables with the rtgen command, there are many resources on the internet for downloading rainbow tables.

Open a web browser and search for rainbow table download.

**Summary of Cracking Hashes with RainbowCrack and Rainbow Tables**

**Step 1: Install RainbowCrack**

- RainbowCrack is a tool that uses rainbow tables to crack hashes, unlike brute force methods. To install it, run the command: `sudo apt install rainbowcrack`.

**Step 2: Create Rainbow Tables**

- Rainbow tables are large files used for cracking hashes efficiently. They can be created or downloaded from the internet.
- Use `rtgen` to create a rainbow table. For example, the command `sudo rtgen md5 loweralpha 1 3 0 1000 1000 0` generates a table for cracking 3-character lowercase MD5 passwords.
- The created table file will have a `.rt` extension. To verify, list the contents of the rainbowcrack directory: `ls /usr/share/rainbowcrack`.

**Step 3: Sort the Rainbow Table**

- Sort the rainbow table using `sudo rtsort .`. This step prepares the table for use in cracking hashes.
- Generate a hash for a test password (e.g., `echo -n 'dog' | md5sum | awk '{print $1}'`), which outputs the hash `06d80eb0c50b49a509b49f2424e8c805`.
- Crack the hash using RainbowCrack with the command: `rcrack . -h <hash>`. For the 'dog' password, the result is obtained within milliseconds.

**Step 4: Crack Multiple Hashes**

- To crack hashes in a file, create a file containing multiple hashes (e.g., `echo -n 'fox' | md5sum | awk '{print $1}' > ~/my_rainbow_hashes.txt`).
- Crack the hashes in the file with the command: `rcrack . -l ~/my_rainbow_hashes.txt`, and RainbowCrack will reveal the cracked passwords.

**Step 5: Download Rainbow Tables**

- In addition to creating your own rainbow tables, you can download pre-made tables from various online sources to save time.

RainbowCrack efficiently cracks simple to moderately complex passwords, especially when using rainbow tables for quick lookups.

Note: **short simple password hashes are cracked almost immediately using dictionaries and rainbow tables. Even fairly complex passwords can be cracked in a matter of hours.**

Note: If John the Ripper can’t crack the hash using its default word list, it will attempt to brute force the hash.

In conclusion, password cracking is a critical component of understanding security vulnerabilities and testing password strength. In this lab, we explored three powerful tools — Hashcat, John the Ripper, and RainbowCrack — each offering unique capabilities to recover plaintext passwords from hashed values. By leveraging dictionary attacks, brute force, and precomputed rainbow tables, these tools allow attackers and security professionals alike to assess the security of hashed password data.

Through Hashcat’s GPU-powered dictionary attacks, John the Ripper’s versatile cracking methods, and RainbowCrack’s speed using rainbow tables, we demonstrated how easily weak and common passwords can be cracked. These tools highlight the importance of using strong, complex passwords and the need for secure password storage techniques, such as hashing with salt and employing multi-factor authentication. As attackers increasingly turn to these techniques to compromise systems, organizations must implement more robust password policies and invest in modern encryption methods to protect their data from unauthorized access. This lab emphasizes the ongoing need for vigilance in password security practices.

Cloud Computing | Cybersecurity | Penetration Testing | Threat Detection | Security Operations

## More from Sumayasomow

## Recommended from Medium

[

See more recommendations

](https://medium.com/?source=post_page---read_next_recirc--315ee9229268---------------------------------------)