
## Generate a Symmetric Key

**Command:**

```bash
openssl rand -out symmetric.key 32
```

**Options:**

- rand: Generates random bytes.
  
- -out symmetric.key: Saves output to symmetric.key.
  
- 32: Number of bytes to generate (32 bytes = 256 bits for AES-256).

---

#### Encrypt Files Using Symmetric Encryption

**Command:**

```bash
openssl enc -aes-256-cbc -salt -in plaintext.txt -out encrypted-text.txt -pass file:symmetric.key
```

**Options:**

- enc: Encrypt utility.
  
- -aes-256-cbc: Algorithm used (AES-256 in CBC mode).
  
- -salt: Adds salt to encryption.
  
- -in plaintext.txt: Input file.
  
- -out encrypted.sym: Output file.
  
- -pass file: symmetric.key: Use key from file.

---

#### Decrypt Files Using Symmetric Encryption

**Command:**

```bash
openssl enc -d -aes-256-cbc -in encrypted-text.txt -out decrypted.txt -pass file:symmetric.key
```

**Options:**

- -d: Decrypt mode.
  
- Other options same as encryption.


---

**View the Symmetric Key**

```bash
xxd symmetric.key
```

Show Key in Hexadecimal format.


---




## Generate an Asymmetric RSA Key Pair


#### Generate Private Key:

**Command:**

```bash
openssl genpkey -algorithm RSA -out private-key.pem 2048
```

**Options:**

- genpkey: Command to generate a private key.
  
- -algorithm RSA: Specifies RSA algorithm.
  
- -out private-key.pem: Saves private key.
  
- 2048: Sets RSA key size to 2048 bits.

---

#### Extract Public Key:

**Command:**

```bash
openssl rsa -in private-key.pem -out public-key.pem -outform PEM -pubout
```

Options:

- rsa: RSA utility.
  
- -in private-key.pem: Input private key.
  
- -outform PEM : Save key in PEM format
  
- -pubout: Output the public key.
  
- -out public-key.pem: Save the public key.

---



#### Encrypt Files using Asymmetric Keys

Command:

```bash
openssl rsautl -encrypt -inkey public-key.pem -pubin -in plaintext.txt -out encrypted.asym
```

Options:

- rsautl: RSA encryption/decryption utility.
  
- -encrypt: Mode for encryption.
  
- -inkey public.key: Use public key.
  
- -pubin: Treat the key as a public key.
  
- -in plaintext.txt: Input file.
  
- -out encrypted.asym: Output file.

---

#### Decrypting Files using Asymmetric Keys


**Command:**

```bash
openssl rsautl -decrypt -inkey private-key.pem -in encrypted-text.txt -out decrypted-text.txt
```

**Options:**

- rsautl: RSA encryption/decryption utility.

- -decrypt: Decryption mode.
  
- -inkey private.key: Use private key.
  
- -in encrypted.asym: Encrypted file.
  
- -out decrypted.txt: Output file.



---



