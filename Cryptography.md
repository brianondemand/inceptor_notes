
Encryption is essentially important because it secures data and information from unauthorized access and thus maintains confidentiality.

### What Is Cryptography?

**Cryptography is the practice and study of techniques for securing communication and data in the presence of adversaries.**

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*uQKUmkGy8VdZTb8MnFWrcQ.png)


### Principles Of Cryptography

- **Confidentiality:** Information can only be accessed by the person for whom it is intended and no other person except him can access it.

- **Integrity:** Information cannot be modified in storage or transition between sender and intended receiver without any addition to information being detected.

- **Non-repudiation:** The creator/sender of information cannot deny his intention to send information at a later stage.

- **Authentication:** The identities of the sender and receiver are confirmed. As well destination/origin of the information is confirmed.

- **Interoperability:** Cryptography allows for secure communication between different systems and platforms.

- **Adaptability:** Cryptography continuously evolves to stay ahead of security threats and technological advancements.


## Types of Cryptography

Cryptography can be categorized into two types:

1. **Classic Cryptography:** It refers to the historical methods and techniques of [encryption](http://encryption/) used before the advent of computers and modern cryptographic algorithms. It can be divided into subtypes, including:

- **Caesar Cipher:** A substitution cipher in which each letter is shifted to a fixed number of positions.
  
- **Vigenere Cipher:** A polyalphabetic substitution cipher that uses multiple Caesar ciphers based on a keyword.
  
- **Playfair Cipher:** A substitution cipher that uses a 5x5 matrix of letters to encrypt pairs of letters.
  
- **Rail Fence Cipher:** A transposition cipher that writes the message in a zigzag pattern.
  
- **Transposition Cipher:** Rearranges characters to encrypt plaintext messages.
  
- **Atbash Cipher:** Substitutes each letter with its reverse alphabet counterpart.

**2. Modern Cryptography:** It refers to the cryptographic algorithms and techniques developed since the mid-20th century with the advancements in computing technology. It can be divided into subtypes, including:

- **Symmetric Key Cryptography:** Utilizes a single secret key for both encryption and decryption, such as AES.
  
- **Asymmetric Key Cryptography:** Utilizes key pairs (public and private keys) for encryption and decryption, like RSA.
  
- **Hash Functions:** Generate fixed-size hash values to verify integrity and create digital signatures.
  
- [Digital Signatures](https://infosec-train.blogspot.com/2022/12/what-is-digital-signature.html)**:** Provide authentication and integrity using asymmetric encryption and hash functions.
  
- **Key Exchange Algorithms:** Enable secure key exchange over insecure channels, such as Diffie-Hellman and ECDH.

----
## Cryptography Techniques

### Encryption Algorithms

Cryptography is broadly classified into two categories: ***Symmetric key Cryptography*** and ***Asymmetric key Cryptography*** (popularly known as public key cryptography).

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*-ZubnDvcxP7cy8JUgUX4Eg.png)

Now Symmetric key Cryptography is further categorized as Classical Cryptography and Modern Cryptography.

Further drilling down, Classical Cryptography is divided into Transposition Cipher and Substitution Cipher. On the other hand, Modern Cryptography is divided into Stream Cipher and Block Cipher.

So, let’s understand these algorithms with examples.

### How various Cryptographic Algorithms Works?

Let’s start with the Symmetric key encryption

#### Symmetric Key Cryptography

> An **encryption** system in which the sender and receiver of a message share a single, common **key** that is used to encrypt and decrypt the message. The most popular **symmetric** – **key** system is the Data **Encryption** Standard (DES).

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*1zgMNGVF1fRjwJxRKI5Wvg.png)

#### Transposition Ciphers

> In Cryptography, a transposition cipher is a method of encryption by which the positions held by units of plaintext (which are commonly characters or groups of characters) are shifted according to a regular system, so that the ciphertext constitutes a permutation of the plaintext.

That is, the order of the units is changed (the plaintext is reordered). Mathematically, a bijective function is used on the characters’ positions to encrypt and an inverse function to decrypt.

***Example:***

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*PcZi89bNwU2oird8UQ90dw.png)

#### Substitution Cipher

> Method of encryption by which units of plaintext are replaced with ciphertext, according to a fixed system; the “units” may be single letters (the most common), pairs of letters, triplets of letters, mixtures of the above, and so forth.

***Example:***

Consider this example shown on the slide: Using the system just discussed, the keyword “zebras” gives us the following alphabets:

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*Pt0ZgOYMA1pXwtUVTrtgdQ.png)

#### Stream Cipher

> Symmetric or secret-key encryption algorithm that encrypts a single bit at a time. With a Stream Cipher, the same plaintext bit or byte will encrypt to a different bit or byte every time it is encrypted.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*nsXiNh0zM7LwoOQe0e8bUA.png)

#### Block Cipher

> An encryption method that applies a deterministic algorithm along with a symmetric key to encrypt a block of text, rather than encrypting one bit at a time as in stream ciphers

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*5r-ePZOfkohw_c3reTYPgw.png)

***Example:*** A common block cipher, AES, encrypts 128-bit blocks with a key of predetermined length: 128, 192, or 256 bits. Block ciphers are pseudorandom permutation (PRP) families that operate on the fixed size block of bits. PRPs are functions that cannot be differentiated from completely random permutations and thus, are considered reliable until proven unreliable.


### Asymmetric Key Encryption (or Public Key Cryptography)

The encryption process where different keys are used for encrypting and decrypting the information. Keys are different but are mathematically related, such that retrieving the plain text by decrypting ciphertext is feasible.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*GjT-QXp9iAaXdj3HrzOX3A.png)

RSA is the most widely used form of public key encryption,

### RSA Algorithm

- RSA stands for *Rivest, Shamir, and Adelman*, inventors of this technique
- Both public and private key are interchangeable
- Variable Key Size (512, 1024, or 2048 bits)

*Here’s how keys are generated in RSA algorithm*

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*Zc1M84hbfFCE1fp8iNA8-A.png)

Alright, this was it for “What is Cryptography” article. To safeguard your information and data shared over the internet it is important to use strong encryption algorithms, to avoid any catastrophic situations.

---

#### Properties of a Good Cryptographic Hash Function

To be cryptographically secure, a hash function must satisfy these core properties:

**a.) Deterministic**

Given the same input, it always produces the same hash output.

**b.) Fast Computation**

It should be able to compute the hash value quickly.

**c.) Pre-image Resistance**

Given a hash output, it should be computationally infeasible to find an input that hashes to that output. This protects against recovering the original data.

**d.) Second Pre-image Resistance**

Given input A and its hash, it should be infeasible to find a different input B (B ≠ A) such that hash(B) = hash(A).

**e.) Collision Resistance**

It should be hard to find any two different inputs that produce the same hash output. A collision breaks the integrity of the hash function.

**f.) Avalanche Effect**

A small change in the input should result in a significantly different hash.

---
