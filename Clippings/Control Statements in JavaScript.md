- [JS Tutorial](https://www.geeksforgeeks.org/javascript/)
- [JS Exercise](https://www.geeksforgeeks.org/practice-javascript-online/)
- [JS Interview Questions](https://www.geeksforgeeks.org/javascript-interview-questions-and-answers/)
- [JS Array](https://www.geeksforgeeks.org/javascript-array-reference/)
- [JS String](https://www.geeksforgeeks.org/javascript-string-reference/)
- [JS Object](https://www.geeksforgeeks.org/javascript-object-reference/)
- [JS Operator](https://www.geeksforgeeks.org/javascript-operators-reference/)
- [JS Date](https://www.geeksforgeeks.org/javascript-date-reference/)
- [JS Error](https://www.geeksforgeeks.org/javascript-error-object-complete-reference/)
- [JS Projects](https://www.geeksforgeeks.org/top-javascript-projects/)
- [JS Set](https://www.geeksforgeeks.org/javascript-set-reference/)
- [JS Map](https://www.geeksforgeeks.org/javascript-map-reference/)
- [JS RegExp](https://www.geeksforgeeks.org/javascript-regexp-reference/)
- [JS Math](https://www.geeksforgeeks.org/javascript-math-reference/)
- [JS Number](https://www.geeksforgeeks.org/javascript-number-reference/)
- [JS Boolean](https://www.geeksforgeeks.org/javascript-boolean-reference/)
- [JS Examples](https://www.geeksforgeeks.org/javascript-examples/)
- [JS Free JS Course](https://www.geeksforgeeks.org/learn-javascript-js-roadmap-for-beginners/)
- [JS A to Z Guide](https://www.geeksforgeeks.org/javascript-complete-guide/)
- [JS Formatter](https://www.geeksforgeeks.org/javascript-formatter/)

JavaScript ****control statement**** is used to control the execution of a program based on a specific condition. If the condition meets then a particular block of action will be executed otherwise it will execute another block of action that satisfies that particular condition.

## Types of Control Statements in JavaScript

- ****Conditional Statement:**** These statements are used for decision-making, a decision
- n is made by the conditional statement based on an expression that is passed. Either YES or NO.
- ****Iterative Statement:**** This is a statement that iterates repeatedly until a condition is met. Simply said, if we have an expression, the statement will keep repeating itself until and unless it is satisfied.

## Approach 1: If Statement

In this approach, we are using an if statement to check a specific condition, the code block gets executed when the given condition is satisfied.

****Syntax****

```javascript
if ( condition_is_given_here ) {
    // If the condition is met, 
    //the code  will get executed.
}
```

****Now let's understand this with the help of example:****

```javascript
const num = 5;
```

```javascript
​
```
```javascript
if (num > 0) {
```
```javascript
console.log("The number is positive.");
```
```javascript
};
```

  
**Output**
```javascript
The number is positive.
```

## Approach 2: Using If-Else Statement

The if-else statement will perform some action for a specific condition. If the condition meets then a particular code of action will be executed otherwise it will execute another code of action that satisfies that particular condition.

****Syntax****

```javascript
if (condition1) {
    // Executes when condition1 is true
    if (condition2) {
        // Executes when condition2 is true
    }
}
```

****Now let's understand this with the help of example:****

```javascript
let num = -10;
```

```javascript
​
```
```javascript
if (num > 0)
```
```javascript
console.log("The number is positive.");
```
```javascript
else
```
```javascript
console.log("The number is negative");
```

  
**Output**
```javascript
The number is negative
```

## Approach 3: Using Switch Statement

The switch case statement in JavaScript is also used for decision-making purposes. In some cases, using the switch case statement is seen to be more convenient than if-else statements.

****Syntax****

```javascript
switch (expression) {
    case value1:
        statement1;
        break;
    case value2:
        statement2;
        break;
    .
    .
    case valueN:
        statementN;
        break;
    default:
        statementDefault;
}
```

****Now let's understand this with the help of example:****

```javascript
let num = 5;
```

```javascript
​
```
```javascript
switch (num) {
```
```javascript
case 0:
```
```javascript
console.log("Number is zero.");
```
```javascript
break;
```
```javascript
case 1:
```
```javascript
console.log("Nuber is one.");
```
```javascript
break;
```
```javascript
case 2:
```
```javascript
console.log("Number is two.");
```
```javascript
break;
```
```javascript
default:
```
```javascript
console.log("Number is greater than 2.");
```
```javascript
};
```

  
**Output**
```javascript
Number is greater than 2.
```

## Approach 4: Using the Ternary Operator (Conditional Operator)

The conditional operator, also referred to as the ternary operator (?:), is a shortcut for expressing conditional statements in JavaScript.

****Syntax****

```javascript
condition ? value if true : value if false
```

****Now let's understand this with the help of example****

```javascript
let num = 10;
```

```javascript
​
```
```javascript
let result = num >= 0 ? "Positive" : "Negative";
```
```javascript
​
```
```javascript
console.log(\`The number is ${result}.\`);
```

  
**Output**
```javascript
The number is Positive.
```

## Approach 5: Using For loop

In this approach, we are using for loop in which the execution of a set of instructions repeatedly until some condition evaluates and becomes false

****Syntax****

```javascript
for (statement 1; statement 2; statement 3) {
    // Code here . . .
}
```

****Now let's understand this with the help of example:****

```javascript
for (let i = 0; i <= 10; i++) {
```

```javascript
if (i % 2 === 0) {
```
```javascript
console.log(i);
```
```javascript
}
```
```javascript
};
```

  
**Output**
```javascript
0
2
4
6
8
10
```

## Approach 6: Using While loop

The while loop repeats a block of code as long as a specified condition is true.

****Syntax****

```javascript
while (condition) {
    // code block
}
```

****Now let's understand this with the help if example****

```javascript
let i = 1;
```

```javascript
​
```
```javascript
while (i <= 5) {
```
```javascript
console.log(i);
```
```javascript
i++;
```
```javascript
}
```

****Output****

```javascript
1
2
3
4
5
```

## Approach 7: Using Do-While loop

The do-while loop is similar to the while loop, except that the condition is evaluated after the execution of the loop's body. This means the code block will execute at least once, even if the condition is false.

****Syntax****

```javascript
do {
    // code block
} while (condition);
```

****Now let's understand this with the help of example:****

```javascript
let i = 1;
```

```javascript
​
```
```javascript
do {
```
```javascript
console.log(i);
```
```javascript
i++;
```
```javascript
} while (i <= 5);
```

****Output****

```javascript
1
2
3
4
5
```

