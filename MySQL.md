To create a new MySQL user and grant privileges in Zorin OS, follow these steps:

### 1. **Log into MySQL as Root**

First, log into MySQL using the root account:

```bash
sudo mysql -u root -p
```

It will prompt you for the root password you set during the installation of MySQL.

### 2. **Create a New User**

Once you're inside the MySQL shell, you can create a new user. Use the following command to create a new MySQL user (replace `newuser` and `password` with the desired username and password):

```sql
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
```

- `newuser`: Replace this with your desired username.
    
- `localhost`: This means the user will only be able to connect from the local machine. If you want to allow connections from any host, replace `'localhost'` with `'%'`.
    
- `password`: Replace this with your desired password for the new user.
    

### 3. **Grant Privileges to the New User**

Next, grant the necessary privileges to the new user. For example, to give full privileges to a specific database (replace `your_database` with the database name):

```sql
GRANT ALL PRIVILEGES ON your_database.* TO 'newuser'@'localhost';
```

If you want to grant full privileges across all databases (not recommended for production environments due to security reasons), use:

```sql
GRANT ALL PRIVILEGES ON *.* TO 'newuser'@'localhost' WITH GRANT OPTION;
```

The `WITH GRANT OPTION` allows the new user to grant privileges to others.

### 4. **Flush Privileges**

To apply the changes, run the following command:

```sql
FLUSH PRIVILEGES;
```

### 5. **Exit MySQL**

Exit the MySQL shell by typing:

```sql
EXIT;
```

### 6. **Test the New User**

Now, you can log in as the new user to test if everything works:

```bash
mysql -u newuser -p
```

Enter the password you set for the new user, and if everything is correct, you should be logged in successfully.

---

### Additional Notes:

- You can grant more specific privileges (like `SELECT`, `INSERT`, `UPDATE`, etc.) instead of `ALL PRIVILEGES` if you want more fine-grained control.
    
- To change or revoke privileges later, you can use `GRANT`, `REVOKE`, and `SHOW GRANTS` commands.
    

Let me know if you need further assistance!