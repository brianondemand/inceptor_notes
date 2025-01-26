
### What is Binary?

**Binary** is a base-2 number system that uses only two digits: **0** and **1**. These are called **bits** (short for binary digits). 

Binary is the language of computers because digital devices operate using two states, such as **on/off** or **high/low voltage**, which are represented by 1 and 0.



---

### Why Binary?

Computers and networking devices use binary because:
1. **Reliability**: Binary states are easy to detect and maintain (e.g., high vs. low voltage).
2. **Simplicity**: With only two states, hardware design is more efficient and cost-effective.
3. **Universality**: All data—text, images, audio, or video—can be represented as binary.


---
### **What is Decimal?**

The **decimal system**, also called the **base-10 system**, is a number system that uses **10 digits**:  
`0, 1, 2, 3, 4, 5, 6, 7, 8, 9`.

Each digit's value depends on its position (or place value) in the number, and each place represents powers of **10**:


---

### **Why Do We Use Decimal?**

1. **Natural to Humans:**
    
    - Humans have **10 fingers**, so counting in 10s (decimal) feels intuitive and has been used for thousands of years.
    - Decimal became the default system in most cultures because it aligns with how humans naturally count.
2. **Widespread Adoption:**
    
    - Decimal is used universally in everyday life for counting, measurements, money, and more.
    - It’s the standard system for most non-computing applications.
3. **Easy Representation of Large Numbers:**
    
    - Decimal makes it easy to understand and work with large or fractional numbers compared to binary. For example:
        - Decimal: 255255
        - Binary: 1111111111111111

---

### Binary vs. Decimal

- **Decimal (Base-10)**: Uses 10 digits (0-9). Example: 192.
- **Binary (Base-2)**: Uses 2 digits (0, 1). Example: 192 in binary is `11000000`.

Binary numbers grow quickly because each bit doubles the range of numbers that can be represented:
- 1 bit: 2 values (0, 1).
- 2 bits: 4 values (00, 01, 10, 11).
- 8 bits (1 byte): 256 values (00000000 to 11111111).

---

# Converting Between Binary and Decimal Numbers

All numbers between 0 and 255 can be represented as an 8-bit string. 

| Base (2^Exponent) | 2⁷      | 2⁶       | 2⁵      | 2⁴       | 2³       | 2²       | 2¹       | 2⁰       |
| ----------------- | ------- | -------- | ------- | -------- | -------- | -------- | -------- | -------- |
| Binary            | 1000000 | 01000000 | 0010000 | 00010000 | 00001000 | 00000100 | 00000010 | 00000001 |
| Decimal           | 128     | 64       | 32      | 16       | 8        | 4        | 2        | 1        |
|                   |         |          |         |          |          |          |          |          |

---
### Converting Decimal To Binary

The process of converting a decimal number into binary is simply marking the closest (lower) placeholder as “on” (1), and subtracting the corresponding value from the decimal number until there is no remainder. Any unused, or skipped, placeholders are marked as “off” (0).

**Example: Converting 147 into binary.**

1. Mark 128 as “on” → Remainder: 147 – 128 = 19
2. Mark 16 as “on” → Remainder: 19 – 16 = 3
3. Mark 2 as “on” → Remainder: 3 – 2 = 1
4. Mark 1 as “on” → Remainder: 1 – 1 = 0
5. Mark unused placeholders as “off”.

| Decimal | 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
|---------|------|----|----|----|---|---|---|---|
| Binary  |  1   |  0 |  0 |  1 | 0 | 0 | 1 | 1 |

As evident from the table, **147** is equal to **10010011** in binary. To verify:  
\( 128 + 16 + 2 + 1 = 147 \).

---
### Converting Binary To Decimal

Simply write out the bit sequence in the table as is, and sum up the placeholder values. Example: Converting 11011101 into decimal.

| Decimal | 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
|---------|------|----|----|----|---|---|---|---|
| Binary  |  1   | 1  | 0  | 1  | 1 | 1 | 0 | 1 |

All placeholders marked as “on” (1) are added together, and the summation yields the decimal product: 128 + 64 + 16 + 8 + 4 + 1 = 221.

---