## What is SQL Injection?

Databases are used to store data such as web application **login credentials** and **e-commerce inventory**. The data is interacted with using **SQL queries** and is most commonly used in web application to **validate** and **authenticate** a login request or perform a **product search**. Keywords and characters are used to form SQL queries in order to retrieve or modify data in a database.

In an SQL injection attack, an adversary can insert combination of keywords or characters (such as a **single quote (')**, **double quote (")**, **asterisks (\*)**, **semicolon (;)** or **round brackets ( ) )** to manipulate the queries used by an application to retrieve or modify information in unintended ways.

## Impacts Of SQL Injections

With no mitigation controls, SQL injection can leave the application at a high-risk of compromise resulting in an impact to the **confidentiality**, and **integrity** of data as well as **authentication** and **authorization** aspect of the application. An adversary can steal sensitive information stored in database used by vulnerable programs or applications such as user credentials, trade secrets, or transaction records. SQL injection vulnerabilities should never be left open; they must be fixed in all circumstances. If the authentication or authorization aspects of an application is affected an attacker may be able login as any other user, such as an administrator which elevates their privileges.

## What are SQL queries?

SQL is a standardized language used to access and manipulate databases to build customizable data views for each user. SQL queries are used to execute commands, such as data **retrieval**, **updates**, and record **removal**. Different SQL elements implements these tasks, e.g., queries using the SELECT statement to retrieve data, based on user-provided parameters.

A typical eStore's SQL database query may look like the following:

```sql
SELECT ItemName, ItemDescription
FROM Items
WHERE ItemID = ItemID;
```

From this, the web application builds a string query that is sent to the database as a single SQL statement:

```php
$sql_query = "SELECT ItemName, ItemDescription
FROM Item
WHERE ItemNumber = ".$_GET["itemid"];
```

A user-provided input `http://www.estore.com/items/items.php?itemid=IE101` can then generates the following SQL query:

```sql
SELECT ItemName, ItemDescription
FROM Item
WHERE ItemID = IE101;
```

As you can gather from the syntax, this query provides the **name** and **description** for item id **101**.

## Types of SQL Injections

There are many different ways to exploit SQL injection each requiring a different level of expertise and knowledge ranging from beginner to expert. The three common types of SQL injection are **Union-based**, **Error-based**, and **Blind SQL** injection.

### Union-based SQL Injection

Union-based SQL Injection involves using the **UNION** statement keyword to combine queries together to retrieve information from a database. This type of injection typically can only retrieve information and cannot be used to **update**, **delete** or **insert** additional data.

### Error-based SQL Injection

Error-based SQL Injection is typically easy to exploit as it returns verbose error information when a SQL query fails such as when the syntax is incorrect. An attacker can learn the exact query being executed by the SQL server and use this information to craft malicious requests. Depending on database configurations this may be able to be used to **insert** or **update** data in addition to retrieval.

### Blind SQL Injection

Blind SQL Injection is typically harder to exploit as there is no information returned directly to the attacker, but it is still exploitable and can sometimes be just as easy to exploit as union-based error-based attacks thanks to tools such as SQLMap. This type of vulnerability requires an attacker to use out-of-band techniques such as Boolean-based or time-based queries in order to extract information from the database in a series of complex, logical statements.

## SQL Injection Example

An attacker wishing to execute SQL injection manipulate a standard SQL query to exploit non-validated input vulnerabilities in a database. There are many ways that this attack vector can be executed, several of which will be shown here to provide you with a general idea about how SQL Injection works.

For example, the above-mentioned input, which pulls information for a specific product, can be altered to read `http://www.estore.com/items/items.php?item_id=101 or 1=1`.

As a result, the corresponding SQL query looks like this:

```sql
SELECT ItemName, ItemDescription
FROM Items
WHERE ItemID = 101 OR 1=1;
```

And since the statement **1 = 1** is always **True**, the query returns all of product names and descriptions in the database, even those that you may not be eligible to access.

Attackers are also able to take advantage of incorrectly filtered characters to alter SQL commands, including using a semicolon to separate two fields.

For example, this input `http://www.estore.com/items/items.php?itemid=IE101; DROP TABLE Users` would generate the following SQL query:

```sql
SELECT ItemName, ItemDescription
FROM Items
WHERE ItemNumber = IE101; DROP TABLE Users;
```

As a result, the entire user database could be deleted.

Another way SQL queries can be manipulated is with a **UNION SELECT** statement. This combines two unrelated **SELECT** queries to retrieve data from different database tables.

For example, the input `http://www.estore.com/items/items.php?itemid=IE101 UNION SELECT username, password FROM Users` produces the following SQL query:

```sql
SELECT ItemName, ItemDescription
From Items
WHERE ItemID = IE101 UNION SELECT username, password FROM Users;
```

Using the **UNION SELECT** statement, this query combines the request for item **IE101**'s name and description with another that pulls names and password for every user in the database.

## SQL Injection and Prevention Methods

With user input channels being the main vector for such attacks, the best approach is controlling and validating user input to watch for attack patterns. Developers can also avoid vulnerabilities by applying the following main prevention methods.

### Input validation

The validation process is aimed at verifying whether or not the type of input submitted by a user is allowed. Input validation makes sure it is the accepted **type**, **length**, **format** and so on. Only the value which passes the validation can be processed. It helps counteract any commands inserted in the input string. In a way, it is similar to looking to see who is knocking before opening the door.

The below shows **itemid** validate length:

```php
if(strlen($_GET['itemid']) == 5) {
    return true;
} else {
    return false;
}
```

### Parametrized queries

Parameterized queries are a means of pre-compiling an SQL statement so that you can then supply the parameters in order for the statement to be executed. This method makes it possible for the database to recognize the code and distinguish it from input data.

The user input is automatically quoted and the supplied input will not cause the change of intent, so this coding style helps mitigate an SQL injection attack.

It is possible to use parameterized queries with the **MySQLi** extension, but **PHP 5.1** presented a better approach when working with database: **PHP Data Objects (PDO)**. PDO adopts methods that simplify the use of parameterized queries. Additionally, it makes tha code easier to read and more portable since it operates on several databases, nut just **MySQL**.

This code uses PDO with parameterized queries to prevent the SQL injection vulnerability:

```php
$itemID = $_GET["itemid"];

$db_connection = new PDO('mysql:host=localhost;dbname=estore', 'dbuser', 'dbpassword');

//preparing the query
$sql_query = "SELECT ItemName, ItemDescription FROM items WHERE ItemID = :id";
$sql_query->bindParam(':id', $itemID);
$sql_query->execute();
$result = $sql_query->fetchAll();
print(htmlentities($result));
```

### Stored procedures

Stored procedures require the developer to group one or more SQL statements into a logical unit to create an execution plan. Subsequent executions allow statements to be automatically parameterized. Simply put, it is a type of code that can be stored for later and used many times.

So, whenever you need to execute the query, instead of writing it over and over, you can just call the stored procedure.

Here is a process of creating a stored procedure in **MySQL** server. For example, you have table like this:

```sql
CREATE TABLE \`salary\` (
		  \`empid\` int(11) NOT NULL,
		  \`sal\` int(11) DEFAULT NULL,
		  PRIMARY KEY (\`empid\`)
		) ENGINE=InnoDB DEFAULT CHARSET=utf8;
```

### Escaping

Always use character-escaping functions for user-supplied input provided by each database management system (DBMS). This is done to make sure the DBMS never confuses it with the SQL statement provided by the developer.

For example, use the `mysql_real_escape_string()` in PHP to avoid characters that could lead to an unintended SQL command. A modified version for the login bypass scenario would look like the following:

```php
$db_connection = mysqli_connect('localhost', 'dbuser', 'dbpassword', 'estore');

// Excaping
$itemID = mysqli_real_escape_string($db_connection, $_GET['itemid']);
//preparing the query
$sql_query = "SELECT ItemName, ItemDescription FROM items WHERE ItemID = ".$itemID;
```

### Avoiding administrative privilages

Don't connect your application to the database using an account with root access. This should be done only if absolutely needed since the attackers could gain access to the whole system. Even the non-administrative accounts server could place risk on an application, even more so if the database server is used by multiple applications and databases.

For that reason, it's better to enforce least privilege on the database to defend the application against SQL injection. Ensure that each application has its own database credentials and that those credentials have the minimum rights the application needs.

### Web application firewall

One of the best practices to identify SQL injection attacks is having a web application firewall (WAF). A WAF operating in front of the web servers monitors the traffic which goes in and out of the web servers and identifies patterns that constitute a threat. Essentially, it is a barrier put between the web application and the Internet.

A WAF operates via defined customizable web security rules. These sets of policies inform the WAF what weaknesses and traffic behavior it should search for. So, based on that information, a WAF will keep monitoring the applications and the GET and POST requests it receives to find and block malicious traffic.

The value of a WAF comes in part from the ease with which policy modification can be enforced. New policies can be added in no time, enabling rapid rule implementation and fast incident response.

---