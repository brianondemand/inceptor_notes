
Variables are "containers" for storing information.

JavaScript variables are used to hold values or expressions.

A variable can have a short name, like x, or a more descriptive name, like button.

Rules for JavaScript variable names:

- Variable names are case sensitive (y and Y are two different variables)

- Variable names must begin with a letter or the underscore character

**Note: Because JavaScript is case-sensitive, variable names are case-sensitive.**


A variable's value can change during the execution of a script. You can refer to a variable by its name to display or change its value.

```javascript
// Initial variable value
let x = 10;
console.log("Initial value of x:", x);

// Changing the value of the variable
x = 20;
console.log("New value of x:", x);

// Incrementing the value of the variable
x += 5;
console.log("After incrementing, x:", x);

// Decreasing the value of the variable
x -= 3;
console.log("After decrementing, x:", x);

```

#### Declaring (Creating) JavaScript Variables

Creating variables in JavaScript is most often referred to as "declaring" variables.

You can declare JavaScript variables with the `var` statement:

```javascript
var x;
var carname;
```

After the declaration shown above, the variables are empty (they have no values yet).

However, you can also assign values to the variables when you declare them:

```javascript
var x=5;
var carname="Scorpio";
```

After the execution of the statements above, the variable x will hold the `value 5`, and carname will hold the `value Scorpio`.

**Note: When you assign a text value to a variable, use quotes around the value.**


#### Assigning Values to Undeclared JavaScript Variables

If you assign values to variables that have not yet been declared, the variables will automatically be
declared.

These statements:

```javascript
x=5;
carname="Scorpio";
```

have the same effect as:

```javascript
var x=5;
var carname="Scorpio";
```


#### Redeclaring JavaScript Variables

If you redeclare a JavaScript variable, it will not lose its original value.

```javascript
var x=5;
var x;
```

After the execution of the statements above, the variable x will still have the value of 5. The value of x is not reset (or cleared) when you redeclare it.

---

### JavaScript `let` and `const`

JavaScript provides different ways to declare variables, with `let` and `const` being the most commonly used modern options. These keywords were introduced in ES6 (ECMAScript 2015) to improve upon the traditional `var`, offering better scoping and security.

---

## JavaScript `let`

The `let` keyword allows you to declare variables that are **block-scoped**, meaning they are only accessible within the block `{}` where they are defined. Unlike `var`, which has function scope, `let` prevents accidental variable overwrites and hoisting-related issues.

 **Declaring a Variable with `let`**

```js
let message = "Hello, World!";
console.log(message); // Output: Hello, World!
```

Here, `message` is a variable that can be reassigned a new value later.

**Reassigning a `let` Variable**

```js
let number = 10;
number = 20; // Allowed
console.log(number); // Output: 20
```

Since `let` allows reassignment, its value can change, but it cannot be **redeclared** in the same scope.

**Block Scope of `let`**

A variable declared with `let` is only accessible within the block `{}` where it is defined.

```js
if (true) {
  let x = 5;
  console.log(x); // Output: 5
}
console.log(x); // Error: x is not defined
```

Here, `x` is only available inside the `if` block.

**Avoiding Redeclaration with `let`**

```js
let fruit = "Apple";
let fruit = "Banana"; // Error: Identifier 'fruit' has already been declared
```

Unlike `var`, `let` does not allow redeclaration in the same scope, reducing accidental variable overwrites.

**Hoisting with `let`**

Variables declared with `let` are **hoisted** but remain in a "temporal dead zone" until they are assigned a value.

```js
console.log(a); // ReferenceError: Cannot access 'a' before initialization
let a = 10;
```

Unlike `var`, which is initialized as `undefined`, `let` remains uninitialized until execution reaches the declaration.

---

## JavaScript `const`

The `const` keyword is used to declare **constant variables** whose values cannot be changed once assigned. Like `let`, `const` is block-scoped, but it offers additional immutability.

**Declaring a Constant with `const`**

```js
const pi = 3.14159;
console.log(pi); // Output: 3.14159
```

Here, `pi` is a constant and cannot be reassigned a new value.

**Trying to Reassign a `const` Variable**

```js
const age = 25;
age = 30; // Error: Assignment to constant variable
```

Since `const` variables are immutable in terms of **reassignment**, attempting to change their value results in an error.

**Block Scope of `const`**

Just like `let`, `const` is block-scoped, meaning it is only accessible inside the block where it is declared.

```js
if (true) {
  const color = "blue";
  console.log(color); // Output: blue
}
console.log(color); // Error: color is not defined
```

The variable `color` is only available inside the `if` block.

**Must Be Initialized**

A `const` variable **must be assigned a value when declared**; otherwise, it will throw an error.

```js
const username; // Error: Missing initializer in const declaration
```

Unlike `let`, you cannot declare a `const` variable without an initial value.

### `const` with Objects and Arrays

Although `const` prevents reassignment, it **does not make objects or arrays immutable**. Their properties or elements can still be modified.

**Modifying Properties of a `const` Object**

```js
const person = { name: "Alice", age: 30 };
person.age = 31; // Allowed
console.log(person.age); // Output: 31
```

Here, the object itself is not reassigned, but its properties can change.

**Adding New Properties to a `const` Object**

```js
const car = { brand: "Toyota" };
car.model = "Corolla"; // Allowed
console.log(car); // Output: { brand: "Toyota", model: "Corolla" }
```

Even though `car` is declared as `const`, its properties can be modified.

**Modifying Elements of a `const` Array**

```js
const numbers = [1, 2, 3];
numbers.push(4); // Allowed
console.log(numbers); // Output: [1, 2, 3, 4]
```

Elements of an array declared with `const` can be modified, but the reference to the array itself cannot change.

**Reassigning a `const` Object or Array** (Not Allowed)

```js
const user = { name: "John" };
user = { name: "Jane" }; // Error: Assignment to constant variable
```

The reference to the object `user` cannot be changed, but its properties can be modified.

---
#### When to Use `var`, `let`, or `const`?

1. Always declare variables

2. Always use `const` if the value should not be changed

3. Always use `const` if the type should not be changed (Arrays and Objects)

4. Only use `let` if you can't use `const`

5. Only use `var` if you MUST support old browsers.
   

## JavaScript Identifiers

All JavaScript **variables** must be **identified** with **unique names**.

These unique names are called **identifiers**.

Identifiers can be short names (like x and y) or more descriptive names (age, sum, totalVolume).

The general rules for constructing names for variables (unique identifiers) are:

- Names can contain letters, digits, underscores, and dollar signs.
- Names must begin with a letter.
- Names can also begin with $ and _ (but we will not use it in this tutorial).
- Names are case sensitive (y and Y are different variables).
- Reserved words (like JavaScript keywords) cannot be used as names.

JavaScript identifiers are case-sensitive.

JavaScript is a dynamically typed language, meaning variables do not have fixed data types. Instead, their types are determined at runtime. 

JavaScript has two main categories of data types: **primitive** and **non-primitive** (also known as reference types).

