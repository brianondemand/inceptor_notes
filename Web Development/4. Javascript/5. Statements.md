
In JavaScript, a **statement** is a single line of code that performs a specific action. It represents a command for the program to execute. Statements in JavaScript can be categorized into several types, including expression statements, declaration statements, and control flow statements.

### 1. Expression Statements

- An **expression** is anything that produces a value.
- **Expression statements** perform an action based on expressions like assignments, function calls, or operations.

**Example:**

 ```javascript
   let x = 5;    // Assignment expression
  console.log(x); // Function call expression
  ```

---
### 2. Declaration Statements

- **Declaration statements** are used to declare variables, functions, or classes.
- Common declaration statements include `let`, `const`, `var`, `function`, and `class`.

**Examples:**

  ```javascript
   let age = 30;        // Declaring a variable
   const name = "John"; // Declaring a constant
   function greet() {   // Declaring a function
   console.log("Hello!");
   }
   ```

---
### 3. Control Flow Statements

**Control flow statements** control the order in which other statements are executed. They allow for decision-making and looping.

#### Common types of control flow statements:

#### 1. Conditional Statements

Used to make decisions in your program. In JavaScript we have the following conditional statements:

- `if statement` - use this statement if you want to execute some code only if a specified condition is true

- `if...else statement` - use this statement if you want to execute some code if the condition is true and another code if the condition is false

- ` if...else if....else statement` - use this statement if you want to select one of many blocks of code to be executed

- `switch statement` - use this statement if you want to select one of many blocks of code to be executed

#### If Statement

You should use the if statement if you want to execute some code only if a specified condition is true.

Syntax:
```javascript
if (condition)
{
code to be executed if condition is true
}
```

Note that if is written in lowercase letters. Using uppercase letters (IF) will generate a JavaScript error!

---

#### If...else Statement

If you want to execute some code if a condition is true and another code if the condition is not true, use the if....else statement.

Syntax:
```javascript
if (condition)
{
code to be executed if condition is true
}
else
{
code to be executed if condition is not true
}
```

---

#### If...else if...else Statement

You should use the if....else if...else statement if you want to select one of many sets of lines to execute.

Syntax:
```javascript
if (condition1)
{
code to be executed if condition1 is true
}
else if (condition2)
{
code to be executed if condition2 is true
}
else
{
code to be executed if condition1 and
condition2 are not true
}
```

Used when multiple conditions need to be checked.

**Example:**

```javascript
let score = 85;

if (score >= 90) {
    console.log("Grade: A");
} else if (score >= 80) {
    console.log("Grade: B");
} else if (score >= 70) {
    console.log("Grade: C");
} else {
    console.log("Grade: F");
}

```


---

#### Switch Statement

You should use the switch statement if you want to select one of many blocks of code to be executed.

Syntax:
```javascript
switch(n)
{
case 1:
execute code block 1
break;
case 2:
execute code block 2
break;
default:
code to be executed if n is
different from case 1 and 2
}
```

This is how it works: First we have a single expression n (most often a variable), that is evaluated once.

The value of the expression is then compared with the values for each case in the structure. If there is a match, the block of code associated with that case is executed. Use break to prevent the code from running into the next case automatically.

Used when checking a variable against multiple values.

**Example** :

```javascript
switch (new Date().getDay()) {  
  case 0:  
    day = "Sunday";  
    break;  
  case 1:  
    day = "Monday";  
    break;  
  case 2:  
     day = "Tuesday";  
    break;  
  case 3:  
    day = "Wednesday";  
    break;  
  case 4:  
    day = "Thursday";  
    break;  
  case 5:  
    day = "Friday";  
    break;  
  case 6:  
    day = "Saturday";  
}
```


HTML CODE :

```html
<!DOCTYPE html>
<html>
<body>

<h2>JavaScript switch</h2>

<p id="demo"></p>

<script>
let day;
switch (new Date().getDay()) {
  case 0:
    day = "Sunday";
    break;
  case 1:
    day = "Monday";
    break;
  case 2:
    day = "Tuesday";
    break;
  case 3:
    day = "Wednesday";
    break;
  case 4:
    day = "Thursday";
    break;
  case 5:
    day = "Friday";
    break;
  case  6:
    day = "Saturday";
}
document.getElementById("demo").innerHTML = "Today is " + day;
</script>

</body>
</html>
```

---

#### 2. Looping Statements

Loops in JavaScript are used to execute the same block of code a specified number of times or while a specified condition is true.

Very often when you write code, you want the same block of code to run over and over again in a row.

Instead of adding several almost equal lines in a script we can use loops to perform a task like this.

In JavaScript there are two different kind of loops:


- `for` - loops through a block of code a specified number of times

- `while` - loops through a block of code while a specified condition is true


#### The `for` Loop

The for loop is used when you know in advance how many times the script should run.

Syntax:
```javascript
for (var=startvalue;var<=endvalue;var=var+increment)
{
code to be executed
}
```

 **Repeats a block of code a fixed number of times.**  

**Example**

```javascript
for (let i = 1; i <= 3; i++) {
    console.log(i);
}
```

**Step-by-step breakdown:**  

1. **`let i = 1`** → The loop starts with `i = 1`.  
2. **`i <= 3`** → Checks if `i` is less than or equal to `3` (Condition is `true`).  
3. Prints `1` then **`i++`** increases `i` to `2`.  
4. Repeats for `i = 2` and `i = 3`.  
5. When `i = 4`, **`i <= 3` is false**, so the loop **stops**.  



---

#### The while loop

The while loop is used when you want the loop to execute and continue executing while the specified condition is true.

Syntax:
```javascript
while (var<=endvalue)
{
code to be executed
}
```

**Note: The <= could be any comparing statement.**

**Repeats as long as a condition is true.**  

**Example**

```javascript
let num = 1;

while (num <= 3) {
    console.log(num);
    num++;
}
```

**Step-by-step breakdown:**  

1. **`num = 1`** → The loop starts with `num = 1`.  
2. **`num <= 3`** → Condition is `true`, so prints `1` then increases `num` to `2`.  
3. Repeats for `num = 2` and `num = 3`.  
4. When `num = 4`, **`num <= 3` is false**, so the loop **stops**.  


---

#### The do...while Loop

The do...while loop is a variant of the while loop. This loop will always execute a block of code ONCE, and then it will repeat the loop as long as the specified condition is true. 

This loop will always be executed at least once, even if the condition is false, because the code is executed before the condition is tested.

Syntax:

```javascript
do
{
code to be executed
}
while (var<=endvalue);
```

**Executes the block at least once, even if the condition is false.**  

**Example**

```javascript
let num = 1;

do {
    console.log(num);
    num++;
} while (num <= 3);
```

**Step-by-step breakdown:**  

1. Prints `1` **before checking** the condition.  
2. Increases `num` to `2`, then checks `num <= 3`. Condition is true, so it continues.  
3. Runs again for `num = 2` and `num = 3`.  
4. When `num = 4`, the condition becomes false, so the loop **stops**.  

#### for...in Loop

**Loops through object properties (keys).**  

**Example**

```javascript
let person = { name: "Alice", age: 25 };

for (let key in person) {
    console.log(key, ":", person[key]);
}
```

**Step-by-step breakdown:**  

1. **First iteration:** `key = "name"`, prints `"name : Alice"`.  
2. **Second iteration:** `key = "age"`, prints `"age : 25"`.  
3. No more properties, so the loop **stops**.  

#### for...of Loop 

**Loops through array values.**  

**Example**

```javascript
let fruits = ["Apple", "Banana", "Cherry"];

for (let fruit of fruits) {
    console.log(fruit);
}
```

**Step-by-step breakdown:**  
1. **First iteration:** `fruit = "Apple"`, prints `"Apple"`.  
2. **Second iteration:** `fruit = "Banana"`, prints `"Banana"`.  
3. **Third iteration:** `fruit = "Cherry"`, prints `"Cherry"`.  
4. No more items, so the loop **stops**.  



---

### Break and Continue Statements

There are two special statements that can be used inside loops: `break` and `continue`.

#### Break

The break command will break the loop and continue executing the code that follows after the loop (if any).

 **Stops a loop early when a condition is met.**  

**Example**

```javascript
for (let i = 1; i <= 5; i++) {
    if (i === 3) {
        break;  // Stops the loop when i is 3
    }
    console.log(i);
}
```

**Step-by-step breakdown:**  
1. **First iteration:** `i = 1`, prints `"1"`.  
2. **Second iteration:** `i = 2`, prints `"2"`.  
3. **Third iteration:** `i = 3`, the `break` statement runs, so the loop **stops immediately**.  



---

#### Continue

The continue command will break the current loop and continue with the next value.

**Skips the current iteration and moves to the next.**  

**Example**

```javascript
for (let i = 1; i <= 5; i++) {
    if (i === 3) {
        continue;  // Skips when i is 3
    }
    console.log(i);
}
```

**Step-by-step breakdown:**  

1. **First iteration:** `i = 1`, prints `"1"`.  
2. **Second iteration:** `i = 2`, prints `"2"`.  
3. **Third iteration:** `i = 3`, `continue` runs, so it **skips printing 3**.  
4. **Fourth iteration:** `i = 4`, prints `"4"`.  
5. **Fifth iteration:** `i = 5`, prints `"5"`.  


---

### 4. Return Statement

The `return` statement is used to return a value from a function and stop the execution of the function.

**Example:**

```javascript
function add(a, b) {
    return a + b;  // Returns the sum
}
let result = add(3, 4);  // result will be 7

```

---

### 5. Throw Statement

The `throw` statement is used to throw an exception, which can then be caught by a `try...catch` block for error handling.

**Example:**

```javascript
try {
    throw new Error("Something went wrong!");
} catch (error) {
    console.log(error.message);  // Output: Something went wrong!
}

```

---
**Summary of Common JavaScript Statements**

|**Type of Statement**|**Description**|**Example**|
|---|---|---|
|**Expression Statement**|Executes expressions like assignments or function calls.|`let x = 10;``console.log(x);`|
|**Declaration Statement**|Declares variables, functions, or classes.|`let y = 20;``function greet() {}`|
|**Control Flow Statement**|Controls the flow of program execution.|`if (x > 5) {}``while (x < 10) {}`|
|**Return Statement**|Exits a function and returns a value.|`return 5;`|
|**Throw Statement**|Throws an exception in error handling.|`throw new Error("Error!");`|

---

JavaScript statements are the building blocks that define the behavior of your program. They perform actions like defining variables, making decisions with conditions, repeating code with loops, and handling errors. Understanding these statements is key to writing effective JavaScript code!