A function (also known as a method) is a self-contained piece of code that performs a particular
"function". You can recognize a function by its format - it's a piece of descriptive text, followed by open and close brackets.

```javascript
// Function to compute the product of p1 and p2  
function myFunction(p1, p2) {  
  return p1 * p2;  
}
```

A function is a reusable code-block that will be executed by an event, or when the function is called.

To keep the browser from executing a script when the page loads, you can put your script into a function.

A function contains code that will be executed by an event or by a call to that function.
You may call a function from anywhere within the page (or even from other pages if the function is
embedded in an external `.js`file).

Functions can be defined both in the `<head>` and in the `<body>` section of a document. However, to assure that the function is read/loaded by the browser before it is called, it could be wise to put it in the `<head>` section.

```javascript
<html>
<head>
<script type="text/javascript">
function displaymessage()
{
alert("Hello World!");
}
</script>
</head>
<body>
<form>
<input type="button" value="Click me!"
onclick="displaymessage()" >
</form>
</body>
</html>
```

The code inside the function will execute when "something" **invokes** (calls) the function:

- When an event occurs (when a user clicks a button)
- When it is invoked (called) from JavaScript code
- Automatically (self invoked)

#### How to Define a Function

The syntax for creating a function is:

```javascript
function functionname(var1,var2,...,varX)
{
some code
}
```

`var1`, `var2`,  are variables or values passed into the function. The `{ and the }` defines the start and end of the function.

**Note: A function with no parameters must include the parentheses () after the function name:**

```javascript
function functionname()
{
some code
}
```

**Note: Do not forget about the importance of capitals in JavaScript! The word function must be written in lowercase letters, otherwise a JavaScript error occurs! Also note that you must call a function with the exact same capitals as in the function name.**


### The `return` Statement

The return statement is used to specify the value that is returned from the function.

So, functions that are going to return a value must use the return statement.

**Example:**

The function below should return the product of two numbers (a and b):

```javascript
function prod(a,b)
{
x=a*b;
return x;
}
```

When you call the function above, you must pass along two parameters:

```javascript
product=prod(2,3);
```

The returned value from the prod() function is 6, and it will be stored in the variable called product.

### The Lifetime of JavaScript Variables

When you declare a variable within a function, the variable can only be accessed within that function.

When you exit the function, the variable is destroyed. These variables are called local variables. You can have local variables with the same name in different functions, because each is recognized only by the function in which it is declared.

If you declare a variable outside a function, all the functions on your page can access it. The lifetime of these variables starts when they are declared, and ends when the page is closed.

#### Local Variables

Variables declared within a JavaScript function, become **LOCAL** to the function.

Local variables can only be accessed from within the function.

```javascript
// code here can NOT use carName  
  
function myFunction() {  
  let carName = "Volvo";  
  // code here CAN use carName  
}  
  
// code here can NOT use carName
```

Since local variables are only recognized inside their functions, variables with the same name can be used in different functions.

Local variables are created when a function starts, and deleted when the function is completed.