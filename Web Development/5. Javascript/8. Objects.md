
In JavaScript, an object is a collection of key-value pairs where the keys are called **properties** and the values can be any type of data, including numbers, strings, arrays, functions, and even other objects. Objects are used to model real-world entities by grouping related data and behavior into a single unit.

Objects can be created in different ways:

1. Using an object literal:

    ```js
    let person = {
      firstName: "John",
      lastName: "Doe",
      age: 30,
      isEmployed: true
    };
    ```

2. Using the `new Object()` syntax (less common):

    ```js
    let car = new Object();
    car.brand = "Toyota";
    car.model = "Corolla";
    car.year = 2020;
    ```


## Object Properties

Object **properties** store values associated with a key inside an object. These properties can be accessed, modified, added, or deleted dynamically.

#### Accessing Object Properties

There are two ways to access properties in an object:

1. **Dot notation (`.`)** – Used when the property name is a valid identifier (without spaces or special characters).

    ```js
    let person = { firstName: "Alice", age: 25 };
    console.log(person.firstName); // Output: Alice
    console.log(person.age); // Output: 25
    ```


2. **Bracket notation (`[]`)** – Used when the property name has special characters, spaces, or is stored as a variable.

    ```js
    let user = { "full name": "Bob Smith", age: 40 };
    console.log(user["full name"]); // Output: Bob Smith
    ```


**Modifying Object Properties**

You can update existing properties by assigning new values.

```js
let book = { title: "JavaScript Basics", pages: 200 };
book.pages = 250; // Updating an existing property
console.log(book.pages); // Output: 250
```

**Adding New Properties**

If a property doesn’t exist, assigning a value to it creates a new property dynamically.

```js
book.author = "John Doe"; // Adding a new property
console.log(book.author); // Output: John Doe
```

**Deleting Object Properties**

The `delete` operator removes a property from an object.

```js
delete book.pages;
console.log(book.pages); // Output: undefined
```

## Object Methods

In JavaScript, **object methods** are functions stored as properties inside an object. Methods allow objects to have behaviors related to their data.

 **Defining Methods in an Object**

A method is just a function assigned to a property:

```js
let person = {
  firstName: "Sarah",
  lastName: "Connor",
  fullName: function() {
    return this.firstName + " " + this.lastName;
  }
};
console.log(person.fullName()); // Output: Sarah Connor
```

Here, `fullName` is a method of the `person` object. The `this` keyword refers to the current object, allowing access to its properties.

**Shorthand Method Syntax**

Instead of writing `fullName: function()`, you can use the shorthand syntax:

```js
let user = {
  name: "Alice",
  greet() {
    return "Hello, " + this.name;
  }
};
console.log(user.greet()); // Output: Hello, Alice
```

**Using `this` Inside Methods**

The `this` keyword refers to the object that calls the method. If an object method uses `this`, it dynamically refers to that particular object.

However, `this` can behave unexpectedly when used inside nested functions or arrow functions:

```js
let car = {
  brand: "Ford",
  showBrand: function() {
    console.log(this.brand); // Works fine
  }
};
car.showBrand(); // Output: Ford
```

Arrow functions do **not** have their own `this` and inherit it from their surrounding scope:

```js
let car = {
  brand: "Ford",
  showBrand: () => {
    console.log(this.brand); // `this` is not bound to `car` in arrow functions
  }
};
car.showBrand(); // Output: undefined
```

To ensure `this` refers to the correct object, use a regular function.

## Displaying JavaScript Objects

There are multiple ways to display object data in JavaScript, such as using `console.log()`, looping through properties, or converting objects into strings.

 **Using `console.log()`**

The simplest way to display an object in JavaScript is by logging it to the console.

```js
let user = { name: "Tom", age: 35 };
console.log(user);
```

**Looping Through Object Properties**

You can use a `for...in` loop to iterate through an object's properties.

```js
let person = { name: "Emma", age: 28, country: "USA" };
for (let key in person) {
  console.log(key + ": " + person[key]);
}
// Output:
// name: Emma
// age: 28
// country: USA
```

 **Converting Objects to JSON (`JSON.stringify`)**

If you want to display an object as a string, use `JSON.stringify()`.

```js
let product = { name: "Laptop", price: 1200 };
console.log(JSON.stringify(product)); // Output: {"name":"Laptop","price":1200}
```

This is useful for storing or transmitting object data.

## Object Constructors

An **object constructor** is a function that creates multiple instances of an object with similar properties and methods.

**Creating Objects Using a Constructor Function**

A constructor function defines a blueprint for creating objects.

```js
function Person(firstName, lastName, age) {
  this.firstName = firstName;
  this.lastName = lastName;
  this.age = age;
  this.fullName = function() {
    return this.firstName + " " + this.lastName;
  };
}

let person1 = new Person("John", "Doe", 30);
let person2 = new Person("Jane", "Smith", 25);

console.log(person1.fullName()); // Output: John Doe
console.log(person2.fullName()); // Output: Jane Smith
```

- The `new` keyword creates a new object.
- The `this` keyword assigns properties to that object.
- Each object created from `Person` will have its own independent data.


**Using `class` Syntax (ES6)**

Modern JavaScript uses **classes** as a cleaner way to define object constructors.

```js
class Car {
  constructor(brand, model, year) {
    this.brand = brand;
    this.model = model;
    this.year = year;
  }

  getCarInfo() {
    return `${this.brand} ${this.model} (${this.year})`;
  }
}

let myCar = new Car("Toyota", "Camry", 2022);
console.log(myCar.getCarInfo()); // Output: Toyota Camry (2022)
```

Classes are syntactic sugar over constructor functions, making the code more readable and structured.

---

