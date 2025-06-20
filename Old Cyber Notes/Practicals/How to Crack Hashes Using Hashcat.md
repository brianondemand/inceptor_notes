## What is Hashcat?

Hashcat is the world's fastest and most advanced password recovery utility, supporting five unique modes of attack for over 300 highly optimized hashing algorithms. hashcat currently supports **CPUs**, **GPUs**, and other hardware accelerators on **Linux**, **Windows**, and **macOS** and has facilities to help enable distributed password cracking.

In simple words i can say we can use Hashcat to crack any password. Hashcat support many hashing algorithms. It provides different attacks that we can use to crack passwords.

As we know we can not reverse HASH so first and normal approach is to guess the password and compare HASH value.

**Note:-** if you are not using **Kali linux** then you need to download it from it's official site.

Here we will be looking into how to crack passwords from below mentioned Generic Hash types, via **HashCat**:

1. MD5 Hashes
2. Salted MD5 Hashes
3. MD5Crypt Digests

## HashCat Attack Modes

HashCat supports the following attack modes:

- **Straight `-a 0`** This mode, also called **Dictionary mode** tries all lines contained in a file as a password. This is a simple wordlist attack.
- **Combination `-a 1`** This mode allows to append each word contained in a wordlist to the end of each word container in second wordlist.
- **Brute-Force `-a 3`** This type of attack consist of massive character combination tries. This attack technique was discontinued on Hashcat and was replaced by Mask-attacks.
- **Hybrid attack** The Hybrid attack mode allows combining a dictionary attack with a brute-force attack. By using this mode, you can append or prepend wordlist elements to a brute-force attack.
- **Mask attack `-a 6` or `-a 7`** The Mask attack is an improvement of the brute-force attack, aiming to design "intelligent" brute-force attacks in which the user has control over the password candidate generation process. For example, the Mask attack allows users to define patterns like a **capital letter** for the first position of the password candidate, or before etc. The `-a 6` mode enables Hybrid Wordlist + Mask, while the `-a 7` mode enables Hybrid Mask + Wordlist.

Let's see how to use Hashcat. Let's open terminal and type `hashcat` and press enter.

![check-hashcat](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Fcheck_hashcat.png&w=1920&q=75)

Now let's try

![hashcat-help](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Fhashcat_help.png&w=1920&q=75)

As we can see hashcat help gives us all the information and also gives us example.

In this module, we will be trying **dictionary-based** & **brute-force** attacks.

Let's see syntax

```bash
hashcat -a <number> -m <number> hash.txt wordlist.txt
```

![hashcat-syntax](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Fhashcat_syntax.png&w=1920&q=75)

**`-m`** define hash type

## 1\. Crack MD5 Hash

let's first create **md5** hash value for "password" string. In kali linux we can use `md5sum` to generate **md5** hash value.

```bash
echo -n "password" | md5sum | tr -d " -" >> hash.txt
```

![generate-md5-hash-in-kali](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Fgenerate_md5_hash.png&w=1920&q=75)

we used `tr -d` to remove any space and hyphen (`-`) from md5sum output.

we will use following command

```bash
hashcat -a 0 -m 0 hash.txt passwordlist.txt
```

![cracking-md5-hash](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Fcracking_md5_hash.png&w=1920&q=75)

where,

`-a 0`: Dictionary attack mode

`-m 0` : MD5 hash mode

`hash.txt`: txt file containing hash in a compliant format

`passwordlist.txt`: dictionary file containing passwords in plain text

![cracked-md5-hash](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Fcracked_md5_hash.png&w=1920&q=75)

**Cracked Hash:** `5f4dcc3b5aa765d61d8327deb882cf99` = `password`

## 2\. Crack Salted MD5 Hash

Let's first generate **MD5 + salt** hash using python:

![generate-md5-with-salt-hash](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Fgenerate_md5_salt_hash.png&w=1920&q=75)

Now copy your hash with salt in `hash.txt`:

```bash
echo "411549f9e10632892f1f35cc33db9ac7:789456" > hash.txt
```

Use Command:

```bash
hashcat -a 0 -m 10 hash.txt passwordlist.txt
```

![cracking-md5-salt-hash](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Fcracking_md5_salt_hash.png&w=1920&q=75)

where,

`-a 0`: Dictionary attack mode

`-m 10` : Salted MD5 hash mode

`hash.txt`: txt file containing hash in a compliant format

`passwordlist.txt`: dictionary file containing passwords in plain text

![cracked-md5-salt-hash](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Fcracked_md5_salt_hash.png&w=1920&q=75)

**Cracked Hash:** `411549f9e10632892f1f35cc33db9ac7:789456` = `password`

## 3\. Crack MD5Crypt Digests Hash

Let's first generate **MD5Crypt** hash using python:

![generate-md5-crypt-hash](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Fgenerate_md5_crypt_hash.png&w=2048&q=75)

Now copy your **MD5Crypt** hash in `hash.txt`:

```bash
echo "$1$lpLYtPKh$/HA7SY940UAXbFDiHByFb." > hash.txt
```

Use Command:

```bash
hashcat -a 0 -m 500 hash.txt passwordlist.txt
```

![cracking-md5crypt-hash](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Fcracking_md5_crypt_hash.png&w=1920&q=75)

where,

`-a 0`: Dictionary attack mode

`-m 500` : MD5Crypt hash mode

`hash.txt`: txt file containing hash in a compliant format

`passwordlist.txt`: dictionary file containing passwords in plain text

![cracked-md5crypt-hash](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Flinux%2Fcracked_md5_crypt_hash.png&w=1920&q=75)

**Cracked Hash:** `$1$lpLYtPKh$/HA7SY940UAXbFDiHByFb.` = `password`

---

## PASSWORD CRACKING OF WINDOWS OPERATING SYSTEM


**1\. Download and Run Mimikatz**

- Download Mimikatz from the official GitHub:  

-  [https://github.com/gentilkiwi/mimikatz](https://github.com/gentilkiwi/mimikatz)

- Run as an Administrator 



**2\. Dump NTLM Hashes from the SAM Database**

Windows stores NTLM hashes in the **SAM (Security Account Manager) database**.

- Dump SYSTEM & SAM Hives Using Reg Save:

```
reg save HKLM\SYSTEM C:\Users\pc\Desktop\SYSTEM
reg save HKLM\SAM C:\Users\pc\Desktop\SAM
```

- **Enable Debug Mode** (required for some operations):

```
privilege::debug
```

-  Then extract NTLM hashes from the saved SYSTEM and SAM files:

```
lsadump::sam /system:C:\Users\pc\Desktop\SYSTEM /sam:C:\Users\pc\Desktop\SAM
```



**3\. Crack NTLM Hashes with Hashcat or John the Ripper**

After extracting NTLM hashes, you can **crack them** using tools like **Hashcat** or **John the Ripper**.

- Save hashes to a file (`hashes.txt`) and use **Hashcat**:

```
hashcat -m 1000 hashes.txt /usr/share/wordlists/rockyou.txt --force
```

- **Crack with John the Ripper**:

```
john --format=NT hashes.txt --wordlist=/usr/share/wordlists/rockyou.txt
```