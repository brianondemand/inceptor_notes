*Last Updated:* October 11, 2022

---

***JSON (JavaScript Object Notation) is defined as a file format used in object-oriented programming that uses human-readable language, text, and syntax to store and communicate data objects between applications. This article uses examples to explain how JSON works, the key types of JSON data, and its functions.*** 

## Table of Contents

- [What Is JSON?](https://www.spiceworks.com/tech/devops/articles/what-is-json/#_001 "What Is JSON?")
- [Types of JSON Data](https://www.spiceworks.com/tech/devops/articles/what-is-json/#_002 "Types of JSON Data")
- [Functions of JSON](https://www.spiceworks.com/tech/devops/articles/what-is-json/#_003 "Functions of JSON")
- [JSON Examples](https://www.spiceworks.com/tech/devops/articles/what-is-json/#_004 "JSON Examples")

## What Is JSON? 

**JSON (JavaScript Object Notation) is a file format used in object-oriented programming that uses human-readable language, text, and syntax to store and communicate data objects between applications.** 

![A Typical JSON Coding Dashboard](https://zd-brightspot.s3.us-east-1.amazonaws.com/wp-content/uploads/2022/10/10134756/A-Typical-JSON-Coding-Dashboard.png)

**A Typical JSON Coding Dashboard | [SourceOpens a new window](https://www.codebrainer.com/blog/what-is-json-in-javascript "Opens a new window")**

Programming languages are rules that convert regular human-understood characters or graphics to a format that computers can understand. Programming languages convert strings of characters to machine code that contain instructions for the computer to carry out. Programming languages were invented late in the 17th century and have evolved since then. Currently, we have both programming languages and ‘in betweens’, forms of writing that help us navigate between programming language and normal text. An excellent example of such a language is JSON.

### Understanding JSON (short for JavaScript Object Notation)

JSON or JavaScript Object Notation is a standard text-based format developed from the JavaScript object syntax and used to portray structured data. JSON, pronounced as ‘jason’, is an open standard format for creating and storing files or exchanging data that uses comprehensible and human-readable text made up of attributes and serializable values. 

JSON is a data format that is not dependent on any language. It is a data format used by several modern programming languages. JSON is used in electronic data exchange, such as transmitting data in web applications. Websites are made of web pages. These web pages display pre-stored information in a server and interact with the server using data formats such as JSON. 

To understand JavaScript Object Notation, you must have a basic understanding of computer programming Hyper Text Markup Language and be familiar with JavaScript and the basics of CSS. Although it was developed following the JavaScript Object Syntax format and shares many similarities (since both are elements of [Object Oriented Programming or OOP)](https://www.spiceworks.com/tech/devops/articles/object-oriented-programming/ "Object Oriented Programming or OOP)"), it remains an independent data format from the syntax mentioned above. Now, different programming languages can read and generate JSON codes. 

**See More:** [**What Is Version Control? Meaning, Tools, and Advantages**](https://www.spiceworks.com/tech/devops/articles/what-is-version-control/ "What Is Version Control? Meaning, Tools, and Advantages")

### History of JSON

JSON was created due to the need for a stateless, real-time protocol for server-to-browser communications that could be implemented without using browser plugins. These browser plugins like flash or Java applets were widely used in the early 2000s.

JSON was not a one-person project. It was created due to multiple disconcerted and individual efforts of many people who later pooled and recognized it as a new invention. The JSON discovery process occurred when people independently realized that using JavaScript object syntax format was an ideal way to send data over a network or from one network to another. 

Nonetheless, JSON gained popularity due to a man, Douglas Crockford, employed at Atari, who coined the name ‘JSON’. In his own words, he excuses himself from the label as a JSON inventor, saying that he ‘discovered’ JSON rather than ‘invent’ it. 

Douglas Crockford credited someone else for being the first to use JSON; although it was a nameless technique then, programmers did what they did best in the easiest way possible. Nevertheless, he was pivotal in publicizing JSON by telling people about this new technique and registering the domain name json.org in 2002. 

In 2005, information and communication technology development progressed more in hardware and software. With the newly developed web pages, it was realized that JSON was a perfect fit for seamless data exchange. 

**See More:** [**What Is Jenkins? Working, Uses, Pipelines, and Features**](https://www.spiceworks.com/tech/devops/articles/what-is-jenkins/ "What Is Jenkins? Working, Uses, Pipelines, and Features")

### How does JSON syntax work?

JSON format has a syntax nearly identical to the code for JavaScript objects. This similarity makes it very easy for programs written in JavaScript to be converted to a JSON data format. Even though JSON is derived from JavaScript object notation syntax, JSON is a text-only subset of JavaScript syntax. 

In JSON, data is represented in name/value pairs separated by a comma. The curly bracket contains the object and is separated from the name by a colon. Square brackets hold arrays, and a comma separates the array from values. 

Here is an example: 

   “movie”: \[

      {

         “season”: “01”,

         “language”: “english”,

         “episode”: “second”,

         “director”: “Robert Anderson”

      }

\]

JSON is built on two structures which are

- An ordered list of values, which translates to arrays, vectors, lists, or sequences.
- A collection of name/value pairs; can be an object, record, hash table, etc.

### Uses of JSON

JSON is widely used all over the world, and this reflects how important it has become in today’s world. It gained so much popularity because of its ease of use and simplicity. The JSON data format replaced XML, which was formally in use but was very heavy and difficult to learn due to several modifications. On the other hand, JSON makes data transfer a walk in the park. The syntax is straightforward to learn, lightweight, and compatible with human and machine languages. 

The most common uses of JSON include:

- It is used in writing JavaScript-based applications that have websites and browser extensions as part of their features.
- It is essential in the transfer of structured data across network connections.
- It is used to draw up data from a server by web applications.
- JSON data format is used to publish public data by web services.
- It is used in migrating from one database to another.

**See More:** [**What Is Serverless? Definition, Architecture, Examples, and Applications**](https://www.spiceworks.com/tech/devops/articles/what-is-serverless/ "What Is Serverless? Definition, Architecture, Examples, and Applications")

## Types of JSON Data

JavaScript Object Notation is currently a widely used data format for any data exchange on the World Wide Web. This data format is easy to understand, with seven different data types. They are; 

1. Number
2. String
3. Boolean
4. Array
5. Object
6. Whitespace
7. Null

Let us now explore each one of these JSON data types in more detail:

### 1\. Number 

A number in JSON is a data type that is used in JSON to represent figures in the base 10 system of counting. A number represents integers, negative integers, simple floating point numbers, and exponential notations. 

However, numbers cannot be represented as strings in the JSON format; only the base 10 (decimal) is used, making JSON’s octal or hexadecimal system obsolete. Infinity and NaN are also not used. 

- **Integer:** Includes the digit 0 and positive or negative figures from 1-9
- **Fraction:** This represents figures with decimal points like .5, .8
- **Exponent:** A number in JSON can have an exponent of 10 and should be prefixed by the exponent sign; e+ e- E+ E-

An example of this JSON data type is { “length”: 150.35 }.

### 2\. String 

A string is a sequence of zero or more doubled spaced Unicode characters written with particular rules in mind. Strings in JSON are always written using double quotation marks (“ “), similar to the C programming language. Strings enclosed in single quotes (‘ ‘) become invalid. You can also include backslash-escaped characters like forward slash (\\/), backward slash (\\\\) backspace (\\b), newline (\\n), carriage return (\\r) horizontal tab (\\t) etc. A character is a string with just a single element.

An example of this type of JSON data is { “name”:”Jade” } or { “city”:”Accra\\/Ghana” }.

### 3\. Boolean 

Boolean is a data type in JavaScript Object Notation that can exist as one of only two options. Boolean values can only be true or false. When using Boolean data type, quotation marks are not used. Examples of Boolean data type are { “transparency” : false } and { “green” : true }.

### 4\. Array

An array is an arranged set of values that are enclosed within a set of square brackets consisting of the left square bracket ( \[ ) and the right square bracket ( \] ). An array consists of values separated using a comma (,). Arrays consist of related values, that is, items under a collective group. An array should be used when the key names are made of sequential integers. You can start Indexing in arrays from either 0 or 1. 

An example of this type of JSON data is: { “colors” : \[“red”, “orange”, “yellow”, “blue”\] } or { “serial numbers” : \[“302”, “303” “305” “306” “307”\] }

### 5\. Object 

An object is a data type in JavaScript Object Notation that is made up of unordered or non-structured sets of data represented as name/value pairs and placed in between a pair of curly brackets (left and right curly brackets {} ). 

An object can contain any number of name/value pairs ranging from zero or more. The keys must be of the strings data type and should be unique. When there is more than one name/value pair, the name is followed by a colon, and then the key/value pairs are separated using a comma (,). 

An example of this type of JSON data is:

{

“participant” : { “name” : “rose”, “age” : “17”, “status” : “disqualified” }

}

### 6\. Whitespace

Whitespace is simply a space added to a code to make it easier for humans to read and understand. Whitespace does not actually affect the code or JSON data format as a whole. It can be reduced to the bare minimum without corrupting the data. Whitespace can be a single or multiple space, Horta tap tab, new line, or carriage return. 

An example of this type of JSON data is { “name” : “ Praise Johnson” } (whitespace is used) or { “name” : “PraiseJohnson” } (whitespace is not used).

### 7\. Null

Technically, null is not a data value type. It is, however, classified as a special value in JavaScript Object Notation. Null describes the absence of value; that is, when there is no value assigned to a key, it is described as null. When using the null title, there is no need to use quotation marks. An example of this type of JSON data is:

{ 

“friendly” : true

“receptive” : true 

“intelligent” : null

}

**See More:** [**DevOps Roadmap: 7-Step Complete Guide**](https://www.spiceworks.com/tech/devops/articles/devops-roadmap-guide/ "DevOps Roadmap: 7-Step Complete Guide")

## Functions of JSON

Functions in programming refer to structured blocks of code that are used to carry out specific operations over and over again. Functions are created as a standard operation and mean the same thing for a particular programming language. Functions provide better modularity for applications and make it easy to reuse codes. Although the concept remains, the same, different languages may refer to these unique codes as methods, subroutines, or procedures. Some functions are built into the programming language, while a programmer can write others. 

### What are JSON functions?

In the same way, JavaScript Object Notation has functions and ordered sets of operations that one can use to read, modify, create or format data written in JSON format. JSON functions help retrieve or extract a data set and work on the data. JSON has different categories of functions best suited to particular software. Three examples of JSON functions are those of IBM, Google Big Query, and [Amazon AWS](https://www.spiceworks.com/tech/cloud/articles/aws-basics/ "Amazon AWS").

### 1\. JSON built-in functions for IBM

IBM is among the most prominent companies in the world regarding information companies. IBM uses JSON to edit data sent as requests and responses to and from IBM Cloudant. JSON objects are used to represent different structures in the IBM Cloudant database. JSON is used in IBM and integrates with the JavaScript used in IBM Cloudant. 

Examples of JSON functions for IBM are:

- JSONGETARRAYEND

This function checks if the following character apart from whitespace is a closing bracket ( \] ), signifying end of line. 

- JSONGETARRAYSTART

It checks if the next character, ignoring whitespace, in a piece of JSON text is an opening bracket ( \[ ).

- JSONGETCOMMA

This function checks if the next character, ignoring whitespace, in a piece of JSON text is a comma ( , ).

- JSONGETOBJECTEND

This checks if the next character, not counting whitespace, in a piece of JSON text is a closing brace ( } ).

- JSONGETOBJECTSTART

It checks if the next character, ignoring whitespace, in a piece of JSON text is an opening brace ( { ).

- JSONGETVALUE

This function can read a value from a piece of JSON text.

- JSONGETCOLON

This verifies if the next character, ignoring whitespace, in a piece of JSON text is a colon ( : ).

- JSONPUTCOMMA

This function adds a comma to the JSON text.

- JSONPUTOBJECTEND

The function adds a closing brace, }, to the JSON text.

- JSONPUTOBJECTSTART

This function adds an opening brace, {, to the JSON text.

### 2\. BigQuery supported JSON functions

Google’s BigQuery is a data storage structure that allows you to manage, analyze, and gain insight from your data. It has [serverless](https://www.spiceworks.com/tech/devops/articles/what-is-serverless/ "serverless") architecture, so organizations can use it without worrying about infrastructure. JSON is a data format widely used in BigQuery. JSON can be used to store semi-structured data, that is, [big data](https://www.spiceworks.com/tech/big-data/articles/what-is-big-data/ "big data") on BigQuery. 

This is made possible by using data type to trick BigQuery into ingesting semi-structured data without providing a schema for the data. Since BigQuery can process JSON fields, you are then able to format and query the data. JSON functions in BigQuery include: 

- JSON\_QUERY

This function extracts a single JSON value, such as an object or array. It also extracts a JSON scalar value, such as a number, string, or boolean.

- JSON\_VALUE

It extracts a scalar value which can be a number, string or boolean. JSON\_VALUE also removes the outermost quotes and unescapes the values. If a non-scalar value is selected, it returns a SQL NULL. 

- JSON\_QUERY\_ARRAY

The function extracts an array of JSON values, such as arrays or objects, and JSON scalar values, such as strings, numbers, and booleans. It performs a similar operation as JSON\_QUERY but for multiple values.

- JSON\_VALUE\_ARRAY

It extracts an array of scalar values. If the selected item is not an array or is an array that does not contain only scalar values, this function returns a SQL NULL.

### 3\. JSON functions supported by Amazon Redshift on AWS

Amazon Web Services (AWS) is a cloud computing service that allows you to build and host your websites, applications, manage databases, etc., in a cheap and scalable environment. AWS uses JSON to send data, make requests, and receive data from service objects. JSON is often used in AWS to make automated configurations. JSON files use a similar structure to that of tags used in AWS to group objects. JSON functions used in Amazon AWS include: 

- IS\_VALID\_JSON

This is a function that validates a JSON string in AWS. It returns the Boolean true value (t) for properly formed strings or false (f) for wrongly formed strings. 

- JSON\_ARRAY\_LENGTH

This function returns the number of elements found in the outer array of a JSON string, thus described length.

- JSON\_EXTRACT\_ARRAY\_ELEMENT\_TEXT

The JSON AWS function returns a JSON array element in the outermost array of a JSON string, and it does this using a zero-based index.

- JSON\_PARSE

This function takes JSON data and converts it into the SUPER representation.

**See More:** [**Top 10 DevOps Automation Tools in 2021**](https://www.spiceworks.com/tech/devops/articles/devops-automation-tools/ "Top 10 DevOps Automation Tools in 2021")

## JSON Examples

JSON is a data format all developers should learn. Thankfully, it is simple to learn and understand with multiple learning examples that can be sourced as tutorial materials. Some clear examples are explained in more detail below. 

### 1\. Examples of JSON objects

The { } (curly brackets) represents the JSON object.

a.

{  

    “employee”: {  

        “name”:       “maryanne”,   

        “salary”:      35000,   

        “married”:    false  

    }  

} 

b. {“lastName”:”Brown”, “firstName”:”Smith”}

### 2\. Examples of JSON array

Arrays are a set of objects or variables encapsulated by square brackets.

a. \[ “pink”, “white”, “brown”\]

b.

\[

    { “name”: “Gift”, “age”: 37 },

    { “name”: “Stone”, “age”: 51 }.

    { “name”: “Bryce”, “age”: 29 }

\]

### 3\. Examples of data grouping in JSON

Data grouping in JSON is done using nested structures. An example is that of an image and thumbnail properties described below.

a.

{

“id”: “0009”,

“type”: “donut”,

“name”: “Cake”,

“image”:

{

“url”: “images/0009.jpg”,

“width”: 300,

“height”: 300

},

“thumbnail”:

{

“url”: “images/thumbnails/0009.jpg”,

“width”:42,

“height”: 42

}

}

Sometimes, you can flatten the structures to make them available as columns in the data set, which is often more desirable. This is done using the subPaths constructor option to instruct the JSON data set to add the nested structures when it flattens the top-level JSON object or the selected data. 

### 4\. Example of JSON in a business use case 

JSON schemas are used in various business scenarios to validate input and to verify that data-carrying messages are accurately constructed. The company in the example below tries to confirm that only accurately formed purchase orders are entered into the system for processing, and this is done using input validation. The JSON schema used is:

{

    “type”: “object”,

    “properties”: {

        “name”: { “type”: “string” },

        “sku”: { “type”: “string” },

        “price”: { “type”: “number”, “minimum”: 0 },

        “shipTo”: {

            “type”: “object”,

            “properties”: {

                “name”: { “type”: “string” },

                “address”: { “type”: “string” },

                “city”: { “type”: “string” },

                “state”: { “type”: “string” },

                “zip”: { “type”: “string” }

                }

        },

        “billTo”: {

            “type”: “object”,

            “properties”: {

                “name”: { “type”: “string” },

                “address”: { “type”: “string” },

                “city”: { “type”: “string” },

                “state”: { “type”: “string” },

                “zip”: { “type”: “string” }

                }

        }

    }

}

In this example, JSON is used to input the various data properties associated with a stock-keeping unit (SKU) correctly.

**See More:** [**DevOps vs. Agile Methodology: Key Differences and Similarities**](https://www.spiceworks.com/tech/devops/articles/devops-vs-agile/ "DevOps vs. Agile Methodology: Key Differences and Similarities") 

### Takeaway 

There is a good reason why JSON is such an essential skill for [DevOps engineers](https://www.spiceworks.com/tech/devops/articles/devops-engineer/ "DevOps engineers"). As the world becomes increasingly hyperconnected and [application programming interfaces (APIs)](https://www.spiceworks.com/tech/devops/articles/application-programming-interface/ "application programming interfaces (APIs)") are regularly used to connect apps, JSON forms an integral part of code architecture. It encapsulates data from multiple sources in a reusable package, which developers can easily understand. This boosts software development productivity and makes it easier to work across languages and platforms.

***Did this article help you understand the basics of JSON? Tell us on*** [***Facebook***Opens a new window](https://www.facebook.com/SpiceworksNews/ "Opens a new window") ***,*** [***Twitter***Opens a new window](https://x.com/SpiceworksNews "Opens a new window") ***, and*** [***LinkedIn***Opens a new window](https://www.linkedin.com/company/spiceworksdotcom/ "Opens a new window") ***. We’d love to hear from you!*** 

*Image Source: Shutterstock*

### **MORE ON DEVOPS**

- [What Is DevOps? Definition, Goals, Methodology, and Best Practices](https://www.spiceworks.com/tech/devops/articles/what-is-devops/ "What Is DevOps? Definition, Goals, Methodology, and Best Practices")
- [What Is DevOps Lifecycle? Definition, Key Components, and Management Best Practices](https://www.spiceworks.com/tech/devops/articles/what-is-devops-lifecycle/ "What Is DevOps Lifecycle? Definition, Key Components, and Management Best Practices")
- [What Is DevSecOps? Definition, Pipeline, Framework, and Best Practices for 2022](https://www.spiceworks.com/tech/devops/articles/what-is-devsecops/ "What Is DevSecOps? Definition, Pipeline, Framework, and Best Practices for 2022")
- [Top 18 Azure DevOps Interview Questions in 2022](https://www.spiceworks.com/tech/devops/articles/azure-devops-interview-questions/ "Top 18 Azure DevOps Interview Questions in 2022")
- [What Is an API (Application Programming Interface)? Meaning, Working, Types, Protocols, and Examples](https://www.spiceworks.com/tech/devops/articles/application-programming-interface/ "What Is an API (Application Programming Interface)? Meaning, Working, Types, Protocols, and Examples")

[Chiradeep BasuMallick](https://www.spiceworks.com/user/about/chiradeepbasumallick/ "Chiradeep BasuMallick")

Technical Writer

[opens a new window](https://www.linkedin.com/in/chiradeep-basumallick-0a571235/ "View Author profile on Linkedin")

[opens a new window](https://www.linkedin.com/in/chiradeep-basumallick-0a571235/ "View Author profile on Linkedin")

Chiradeep is a content marketing professional, a startup incubator, and a tech journalism specialist. He has over 11 years of experience in mainline advertising, marketing communications, corporate communications, and content marketing. He has worked with a number of global majors and Indian MNCs, and currently manages his content marketing startup based out of Kolkata, India. He writes extensively on areas such as IT, BFSI, healthcare, manufacturing, hospitality, and financial analysis & stock markets. He studied literature, has a degree in public relations and is an independent contributor for several leading publications.

![Take me to Community](https://www.spiceworks.com/wp-content/uploads/2022/03/spot-illustration.png)

Do you still have questions? Head over to the Spiceworks Community to find answers.