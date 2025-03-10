An array is a special variable, which can hold more than one value:

```javascript
const cars = ["Saab", "Volvo", "BMW"];
```

An array can hold many values under a single name, and you can access the values by referring to an index number.

Using an array literal is the easiest way to create a JavaScript Array.

Syntax:

```javascript
const _array_name_ = [_item1_, _item2_, ...];
```

It is a common practice to declare arrays with the `const` keyword.

Spaces and line breaks are not important. A declaration can span multiple lines:

```javascript
const cars = [  
  "Saab",  
  "Volvo",  
  "BMW"  
];
```

You can also create an array, and then provide the elements:

```javascript
const cars = [];  
cars[0]= "Saab";  
cars[1]= "Volvo";  
cars[2]= "BMW";
```

## Accessing Array Elements

You access an array element by referring to the **index number**:

```javascript
const cars = ["Saab", "Volvo", "BMW"];  
let car = cars[0];
```


**Note:** Array indexes start with 0.

`[0]` is the first element. `[1]` is the second element.

## Changing an Array Element

This statement changes the value of the first element in `cars`:

```javascript
const cars = ["Saab", "Volvo", "BMW"];  
cars[0] = "Opel";
```

## Converting an Array to a String

The JavaScript method `toString()` converts an array to a string of (comma separated) array values.

```javascript
const fruits = ["Banana", "Orange", "Apple", "Mango"];  
document.getElementById("demo").innerHTML = fruits.toString();
```

**Result:**

`Banana,Orange,Apple,Mango`

## Access the Full Array

With JavaScript, the full array can be accessed by referring to the array name:

```javascript
const cars = ["Saab", "Volvo", "BMW"];  
document.getElementById("demo").innerHTML = cars;
```

## Arrays are Objects

Arrays are a special type of objects. The `typeof` operator in JavaScript returns "object" for arrays.

But, JavaScript arrays are best described as arrays.

Arrays use **numbers** to access its "elements". In this example, `person[0]` returns John:

```javascript
const person = ["John", "Doe", 46];
```

Objects use **names** to access its "members". In this example, `person.firstName` returns John:

```javascript
const person = {firstName:"John", lastName:"Doe", age:46};
```

## Array Elements Can Be Objects

JavaScript variables can be objects. Arrays are special kinds of objects.

Because of this, you can have variables of different types in the same Array.

You can have objects in an Array. You can have functions in an Array. You can have arrays in an Array:

```javascript
myArray[0] = Date.now;  
myArray[1] = myFunction;  
myArray[2] = myCars;
```

## Array Properties

The real strength of JavaScript arrays are the built-in array properties and methods:

### The length Property

The `length` property of an array returns the length of an array (the number of array elements).

```javascript
const fruits = ["Banana", "Orange", "Apple", "Mango"];  
let length = fruits.length;
```

The `length` property is always one more than the highest array index.

**Accessing the First Array Element**

```javascript
const fruits = ["Banana", "Orange", "Apple", "Mango"];  
let fruit = fruits[0];
```

**Accessing the Last Array Element**

```javascript
const fruits = ["Banana", "Orange", "Apple", "Mango"];  
let fruit = fruits[fruits.length - 1];
```

## Adding Array Elements

The easiest way to add a new element to an array is using the `push()` method:

```javascript
const fruits = ["Banana", "Orange", "Apple"];  
fruits.push("Lemon");  // Adds a new element (Lemon) to fruits
```

New element can also be added to an array using the `length` property:

```javascript
const fruits = ["Banana", "Orange", "Apple"];  
fruits[fruits.length] = "Lemon";  // Adds "Lemon" to fruits
```

## Associative Arrays

Arrays with named indexes are called associative arrays (or hashes).

JavaScript does **not** support arrays with named indexes.

In JavaScript, **arrays** always use **numbered indexes**.

Many programming languages support arrays with named indexes.

```javascript
const person = [];  
person[0] = "John";  
person[1] = "Doe";  
person[2] = 46;  
person.length;    // Will return 3  
person[0];        // Will return "John"
```

## The Difference Between Arrays and Objects

In JavaScript, **arrays** use **numbered indexes**.  

In JavaScript, **objects** use **named indexes**.

Arrays are a special kind of objects, with numbered indexes.

## When to Use Arrays. When to use Objects.

- JavaScript does not support associative arrays.
- You should use **objects** when you want the element names to be **strings (text)**.
- You should use **arrays** when you want the element names to be **numbers**.


## JavaScript new Array()

JavaScript has a built-in array constructor `new Array()`.

But you can safely use `[]` instead.

```javascript
const points = new Array(40, 100, 1, 5, 25, 10);  
const points = [40, 100, 1, 5, 25, 10];
```

### A Common Error

```javascript
// Create an array with one element:  
const points = [40];
```

is not the same as:

```javascript
// Create an array with 40 undefined elements:  
const points = new Array(40);
```

## How to Recognize an Array

A common question is: How do I know if a variable is an array?

The problem is that the JavaScript operator `typeof` returns "`object`":

```javascript
const fruits = ["Banana", "Orange", "Apple"];  
let type = typeof fruits;
```

The `typeof` operator returns object because a JavaScript array is an object.

### Solution 1:

To solve this problem ECMAScript 5 (JavaScript 2009) defined a new method `Array.isArray()`:

```javascript
Array.isArray(fruits);
```

### Solution 2:

The `instanceof` operator returns true if an object is created by a given constructor:

```javascript
const fruits = ["Banana", "Orange", "Apple"];  
  
(fruits instanceof Array);
```

## Nested Arrays and Objects

Values in objects can be arrays, and values in arrays can be objects:

```javascript
const myObj = {  
  name: "John",  
  age: 30,  
  cars: [  
    {name:"Ford", models:["Fiesta", "Focus", "Mustang"]},  
    {name:"BMW", models:["320", "X3", "X5"]},  
    {name:"Fiat", models:["500", "Panda"]}  
  ]  
}

```

To access arrays inside arrays, use a for-in loop for each array:

```javascript
for (let i in myObj.cars) {  
  x += "<h1>" + myObj.cars[i].name + "</h1>";  
  for (let j in myObj.cars[i].models) {  
    x += myObj.cars[i].models[j];  
  }  
}
```

---

### JavaScript Arrays: Methods, Searching, Sorting, Iteration, and `const`


#### 1. JavaScript Array Methods

JavaScript provides various built-in methods to manipulate arrays efficiently. These methods allow you to add, remove, modify, and transform elements within an array.

Some common methods include:

- **`push()` and `pop()`**:
    
    - `push()` adds one or more elements to the end of an array.
    - `pop()` removes the last element from an array.
    
    ```js
    let fruits = ["Apple", "Banana"];
    fruits.push("Orange"); // ["Apple", "Banana", "Orange"]
    fruits.pop(); // ["Apple", "Banana"]
    ```


- **`shift()` and `unshift()`**:
    
    - `shift()` removes the first element of an array.
    - `unshift()` adds one or more elements to the beginning of an array.
    
    ```js
    let numbers = [2, 3, 4];
    numbers.shift(); // [3, 4]
    numbers.unshift(1); // [1, 3, 4]
    ```


- **`splice()` and `slice()`**:
    
    - `splice()` allows elements to be added, removed, or replaced within an array.
    - `slice()` creates a new array by extracting a portion of the existing array without modifying it.
    
    ```js
    let arr = ["a", "b", "c", "d"];
    arr.splice(1, 2, "x", "y"); // ["a", "x", "y", "d"] (replaces "b" and "c" with "x" and "y")
    let newArr = arr.slice(1, 3); // ["x", "y"] (extracts elements from index 1 to 2)
    ```


- **`concat()`**:  
    This method merges two or more arrays into a new array.
    
    ```js
    let firstArr = [1, 2];
    let secondArr = [3, 4];
    let combined = firstArr.concat(secondArr); // [1, 2, 3, 4]
    ```


- **`join()`**:  
    Converts an array into a string, with elements separated by a specified separator.
    
    ```js
    let words = ["Hello", "world"];
    let sentence = words.join(" "); // "Hello world"
    ```


- **`map()`, `filter()`, and `reduce()`**:  
    These methods help transform and process array elements.
    
    ```js
    let numbers = [1, 2, 3, 4];
    let doubled = numbers.map(num => num * 2); // [2, 4, 6, 8]
    
    let evens = numbers.filter(num => num % 2 === 0); // [2, 4]
    
    let sum = numbers.reduce((acc, num) => acc + num, 0); // 10
    ```
    

---

#### 2. Searching in JavaScript Arrays

JavaScript provides several methods to search for elements within an array.

- **`indexOf()`**:  
    Returns the index of the first occurrence of an element, or `-1` if not found.
    
    ```js
    let colors = ["red", "green", "blue"];
    let index = colors.indexOf("green"); // 1
    ```
    
- **`lastIndexOf()`**:  
    Works like `indexOf()` but searches from the end of the array.
    
    ```js
    let nums = [1, 2, 3, 2, 1];
    let lastIndex = nums.lastIndexOf(2); // 3
    ```
    
- **`find()` and `findIndex()`**:
    
    - `find()` returns the first element that satisfies a condition.
    - `findIndex()` returns the index of the first matching element.
    
    ```js
    let ages = [10, 15, 20, 25];
    let firstAdult = ages.find(age => age >= 18); // 20
    let firstAdultIndex = ages.findIndex(age => age >= 18); // 2
    ```
    
- **`includes()`**:  
    Checks if an array contains a specific element.
    
    ```js
    let fruits = ["apple", "banana", "mango"];
    let hasApple = fruits.includes("apple"); // true
    ```
    

---

#### 3. Sorting in JavaScript Arrays

JavaScript arrays can be sorted using the `sort()` method, but it behaves differently based on the type of elements.

- **Sorting Strings**:  
    By default, `sort()` sorts elements as strings in lexicographical (dictionary) order.
    
    ```js
    let names = ["John", "Alice", "Bob"];
    names.sort(); // ["Alice", "Bob", "John"]
    ```
    
- **Sorting Numbers**:  
    When sorting numbers, `sort()` needs a compare function, otherwise it sorts them as strings.
    
    ```js
    let numbers = [10, 5, 20, 15];
    numbers.sort((a, b) => a - b); // [5, 10, 15, 20] (ascending order)
    numbers.sort((a, b) => b - a); // [20, 15, 10, 5] (descending order)
    ```
    
- **`reverse()`**:  
    This method reverses the order of elements in an array.
    
    ```js
    let letters = ["a", "b", "c"];
    letters.reverse(); // ["c", "b", "a"]
    ```
    

---

#### 4. Iteration Over Arrays in JavaScript

There are several ways to iterate over an array.

- **Using `for` Loop**:  
    The traditional `for` loop is useful when you need precise control over the iteration.
    
    ```js
    let arr = [1, 2, 3];
    for (let i = 0; i < arr.length; i++) {
      console.log(arr[i]);
    }
    ```
    
- **Using `forEach()`**:  
    The `forEach()` method executes a provided function once for each array element.
    
    ```js
    let items = ["apple", "banana", "mango"];
    items.forEach(item => console.log(item));
    ```
    
- **Using `map()`**:  
    The `map()` method creates a new array by applying a function to each element.
    
    ```js
    let numbers = [1, 2, 3];
    let squares = numbers.map(num => num * num); // [1, 4, 9]
    ```
    
- **Using `for...of` Loop**:  
    This loop provides a concise way to iterate over array values.
    
    ```js
    let values = [10, 20, 30];
    for (let value of values) {
      console.log(value);
    }
    ```
    

---

#### 5. Using `const` with Arrays in JavaScript

When declaring an array using `const`, you cannot reassign the entire array, but you can modify its contents.

```js
const numbers = [1, 2, 3];
numbers.push(4); // Allowed: [1, 2, 3, 4]
numbers[0] = 100; // Allowed: [100, 2, 3, 4]
// numbers = [5, 6, 7]; // Error: Assignment to constant variable
```

Since arrays are reference types, `const` only prevents reassignment of the reference but does not make the array immutable. To fully prevent modifications, use `Object.freeze()`.

```js
const frozenArray = Object.freeze([1, 2, 3]);
// frozenArray.push(4); // Error: Cannot add property
```

Using `const` for arrays ensures that the reference remains the same, improving predictability while still allowing modifications to the elements inside.