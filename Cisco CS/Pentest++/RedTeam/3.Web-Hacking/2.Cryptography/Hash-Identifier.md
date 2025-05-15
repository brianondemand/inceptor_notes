##  General
The Hash-Identifier tool serves to ascertain the encryption method employed in hashing a password or data. By taking a hash value as its input, it conducts a set of tests to pinpoint the algorithm utilized in generating the hash. Once the algorithm is recognized, the tool aids in discerning the initial plaintext value that underwent hashing.

Haiti enhances the base functionality of the Hash-Identifier tool by incorporating support for identifying hash types compatible with both John the Ripper and Hashcat.

Command (Create via Alias)
```
# Hash-Identifier (Base Tool)
hashid HASHID
hash-identifier HASHID

# Haiti Hash-Identifier (Best Tool)
haiti -e HASHID
```

##  More Information
More information ---> https://github.com/blackploit/hash-identifier
More information ---> https://github.com/noraj/haiti

<iframe src="https://github.com/noraj/haiti" width="100%" height="1300"></iframe>