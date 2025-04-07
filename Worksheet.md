
![PART 1][https://networkwalks.com/wp-content/uploads/2020/03/VLAN-Trunks-notes-part-1-cheat-sheet-network-walks.png]


![PART 2][https://networkwalks.com/wp-content/uploads/2020/03/VLAN-Trunks-notes-part-2-cheat-sheet-network-walks.png]



https://cs3.calstatela.edu/~egean/cs4471/lecture-notes-ciscopress2020/CCNAv1/PowerPoint%20slides/



## 🔢 1. Logical Operators

Logical operators are used to combine multiple conditions.

### 🧠 Operators:

- `&&` (AND)
    
- `||` (OR)
    
- `!` (NOT)
    

### ✅ Use Cases:

#### 🟢 `&&` (AND) – All conditions must be true

```js
let age = 25;
if (age >= 18 && age < 60) {
  console.log("You are an adult.");
}
```

✅ Output: `You are an adult.`

---

#### 🟠 `||` (OR) – At least one condition must be true

```js
let day = "Saturday";
if (day === "Saturday" || day === "Sunday") {
  console.log("It's the weekend!");
}
```

✅ Output: `It's the weekend!`

---

#### 🔴 `!` (NOT) – Reverses a condition

```js
let isLoggedIn = false;
if (!isLoggedIn) {
  console.log("Please log in.");
}
```

✅ Output: `Please log in.`

---

## ❓ 2. Conditional (Ternary) Operator

This is a **shorthand** way of writing if-else.

### ✅ Syntax:

```js
condition ? valueIfTrue : valueIfFalse;
```

### ✨ Example:

```js
let age = 16;
let message = age >= 18 ? "Access granted" : "Access denied";
console.log(message);
```

✅ Output: `Access denied`

---

## 💻 Mini Practice Task (with Solution)

### 🔹 Task:

Write a function that takes a score and returns:

- `"Pass"` if score is 50 or more
    
- `"Fail"` if score is less than 50
    
- Use a ternary operator
    

### ✍️ Solution:

```js
function checkResult(score) {
  return score >= 50 ? "Pass" : "Fail";
}

console.log(checkResult(67)); // Output: Pass
console.log(checkResult(42)); // Output: Fail
```

---

### Practice: Login Checker

```js
let username = "admin";
let password = "1234";

if (username === "admin" && password === "1234") {
  console.log("Login successful");
} else {
  console.log("Invalid credentials");
}
```

---

