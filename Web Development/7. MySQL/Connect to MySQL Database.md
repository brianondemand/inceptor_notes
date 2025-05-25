
Before we can access data in the MySQL database, we need to be able to connect to the server using MySQLi:



**Example (MySQLi Procedural)**

```php

<?php  

$servername = "localhost";  
$username = "username";  
$password = "password";  
  
// Create connection  
$conn = mysqli_connect($servername, $username, $password);  
  
// Check connection  
if (!$conn) {  
  die("Connection failed: " . mysqli_connect_error());  
}  
echo "Connected successfully";  

?>
```


**Example Object-Oriented Style(PDO)**

```php
<?php
// Step 1: Create connection
$conn = new mysqli("localhost", "root", "", "my_database");

// Step 2: Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

echo "Connected successfully!";
?>

```


## 2. **PDO (PHP Data Objects)**

**Supports:** multiple database types (MySQL, PostgreSQL, SQLite, etc.)  
**Best choice** for flexibility, security (prepared statements), and modern applications.

```php
<?php

$host = 'localhost';
$dbname = 'database_name';
$username = 'username';
$password = 'password';

try {
    // Create a new PDO instance
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);
    
    // Set error mode to exception for better error handling
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    echo "Connected to the database successfully!";
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

?>

```


| Code                             | What It Means                             |
| -------------------------------- | ----------------------------------------- |
| `"localhost"`                    | The server you're connecting to           |
| `"root"`                         | The MySQL username                        |
| `""`                             | The MySQL password (empty here)           |
| `"my_database"`                  | The name of the database                  |
| `die(...)`                       | Stops and shows error if connection fails |
| `echo "Connected successfully!"` | Shows that connection worked              |


The connection will be closed automatically when the script ends. To close the connection before, use the following:

**MySQLi Object-Oriented:**

```
$conn->close();
```

**MySQLi Procedural:**

```
mysqli_close($conn);
```


**Note:** In the PDO example above we have also **specified a database (myDB)**. PDO require a valid database to connect to. If no database is specified, an exception is thrown.


#### Note:

- Exception is an object that describes an error or unexpected behaviour of a PHP script.
  
- **PDOException** returns the error code as a string.

- `die() `- Terminate the code if there is an error.

- `getMessage()` - Print out the message

- `include` : add file but brings an error if it does not exist

- `include_once` : add file and check if it has been included in another line then through an error.

- `require` : add file but brings an error if it does not exist and stop entire code from running

- `require_once` : add file and check if it has been included in another line then throw an error and stop entire code from running.