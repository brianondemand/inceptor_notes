
JSON (JavaScript Object Notation) is a **lightweight data format** used for storing and exchanging data, especially between a server and a web application. It is **language-independent** and is widely used in APIs.

## What JSON looks like

JSON is a human-readable format for storing and transmitting data. As the name implies, it was originally developed for JavaScript, but can be used in any language and is very popular in web applications. The basic structure is built from one or more keys and values:

```json
{
  "key": value
}
```

You’ll often see a collection of `key:value` pairs enclosed in brackets described as a JSON object. While the key is any string, the value can be a string, number, array, additional object, or the literals, false, true and null. For example, the following is valid JSON:

```json
{
  "key": "String",
  "Number": 1,
  "array": [1,2,3],	
  "nested": {
	"literals": true
  }	
}
```

JSON doesn't have to have only key:value pairs; the specification allows to any value to be passed without a key. However, almost all of the JSON objects that you see will contain key:value pairs.

#### Why Use JSON?

The JSON format is syntactically similar to the code for creating JavaScript objects. Because of this, a JavaScript program can easily convert JSON data into JavaScript objects.

Since the format is text only, JSON data can easily be sent between computers, and used by any programming language.

JavaScript has a built in function for converting JSON strings into JavaScript objects:

`JSON.parse()`

JavaScript also has a built in function for converting an object into a JSON string:

`JSON.stringify()`

You can receive pure text from a server and use it as a JavaScript object.

You can send a JavaScript object to a server in pure text format.

You can work with data as JavaScript objects, with no complicated parsing and translations.


#### Storing Data

When storing data, the data has to be a certain format, and regardless of where you choose to store it, _text_ is always one of the legal formats.

JSON makes it possible to store JavaScript objects as text.


### JSON Syntax Basics

JSON is based on key-value pairs, similar to JavaScript objects, but with **some differences**:  

**Keys must be strings** (wrapped in double quotes `""`).  

```json
{"name":"John"}
```
 
**Values can be** strings, numbers, objects, arrays, booleans, or `null`.  

```json
{name:"John"}
```

**No trailing commas** (unlike JavaScript objects).

**Example:**

```json
"name":"John"
```

**JSON names require double quotes.**

## JSON Values

In **JSON**, _values_ must be one of the following data types:

- a string
- a number
- an object
- an array
- a boolean
- null

In **JavaScript** values can be all of the above, plus any other valid JavaScript expression, including:

- a function
- a date
- undefined

In JSON, _string values_ must be written with double quotes:

```json
{"name":"John"}
```

In JavaScript, you can write string values with double _or_ single quotes:

```json
{name:'John'}
```

## JavaScript Objects

Because JSON syntax is derived from JavaScript object notation, very little extra software is needed to work with JSON within JavaScript.

With JavaScript you can create an object and assign data to it, like this:

```json
person = {name:"John", age:31, city:"New York"};
```

You can access a JavaScript object like this:

```json
// returns John  
person.name;

// returns John  
person["name"];
```

Data can be modified like this:

```json
person.name = "Gilbert";

person["name"] = "Gilbert";
```

#### JSON Files

- The file type for JSON files is ".json"
- The MIME type for JSON text is "application/json"

# JSON vs XML

Both JSON and XML can be used to receive data from a web server.

The following JSON and XML examples both define an employees object, with an array of 3 employees:

**JSON Example:**

```json
{"employees":[  
  { "firstName":"John", "lastName":"Doe" },  
  { "firstName":"Anna", "lastName":"Smith" },  
  { "firstName":"Peter", "lastName":"Jones" }  
]}
```

**XML Example:**

```xml
<employees>  
  <employee>  
    <firstName>John</firstName> <lastName>Doe</lastName>  
  </employee>  
  <employee>  
    <firstName>Anna</firstName> <lastName>Smith</lastName>  
  </employee>  
  <employee>  
    <firstName>Peter</firstName> <lastName>Jones</lastName>  
  </employee>  
</employees>
```

### JSON is Like XML Because

- Both JSON and XML are "self describing" (human readable)
- Both JSON and XML are hierarchical (values within values)
- Both JSON and XML can be parsed and used by lots of programming languages
- Both JSON and XML can be fetched with an XMLHttpRequest

### JSON is Unlike XML Because

- JSON doesn't use end tag
- JSON is shorter
- JSON is quicker to read and write
- JSON can use arrays

The biggest difference is:

 XML has to be parsed with an XML parser. JSON can be parsed by a standard JavaScript function.

## Why JSON is Better Than XML

XML is much more difficult to parse than JSON.  
JSON is parsed into a ready-to-use JavaScript object.

For AJAX applications, JSON is faster and easier than XML:

Using XML

- Fetch an XML document
- Use the XML DOM to loop through the document
- Extract values and store in variables

Using JSON

- Fetch a JSON string
- JSON.Parse the JSON string

---

# JSON Data Types

In JSON, values must be one of the following data types:

- a string
- a number
- an object (JSON object)
- an array
- a boolean
- _null_

JSON values **cannot** be one of the following data types:

- a function
- a date
- _undefined_


#### JSON Strings

Strings in JSON must be written in double quotes.

```json
{"name":"John"}
```

#### JSON Numbers

Numbers in JSON must be an integer or a floating point.

```json
{"age":30}
```

#### JSON Objects

Values in JSON can be objects.

```json
{  
"employee":{"name":"John", "age":30, "city":"New York"}  
}
```

Objects as values in JSON must follow the JSON syntax.

#### JSON Arrays

Values in JSON can be arrays.

```json
{  
"employees":["John", "Anna", "Peter"]  
}
```

#### JSON Booleans

Values in JSON can be true/false.

```json
{"sale":true}
```

#### JSON null

Values in JSON can be null.

```json
{"middlename":null}
```

---

