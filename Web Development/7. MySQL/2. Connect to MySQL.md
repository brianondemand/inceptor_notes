
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


**Example Object-Oriented Style**

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

