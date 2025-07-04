[Sitemap](https://medium.com/sitemap/sitemap.xml)

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*2WQk9zJfKVZT14TgZHrgUQ.png)

DVWA Logo

> **Introduction**

In this article, we will explore how to solve the SQL injection challenge in DVWA by bypassing the security measures implemented at each level, from low to high.

> **What is SQL Injection?**

SQL injection is a technique used to manipulate SQL queries, allowing attackers to access, modify, or delete data in a database by exploiting vulnerable input fields.

> **Analyzing Low Security Source Code**

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*djgL-UnXEgBI5T7CTl-qCg.png)

Low Security Source Code

The code takes the ID submitted through the input field and searches the database for the corresponding user. It retrieves the user’s first name and last name, then displays them on the web interface.

For example, if we enter the ID 1, the code fetches the first name admin and last name admin, which are associated with that ID.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*ZAqffOdmypbONsDBKcJZEg.png)

Testing the Application

Because the code directly uses the ID submitted by the user in the SQL query without checking it properly, it becomes vulnerable to SQL injection.

So, our first attempt will be to enter this payload:

```c
1' OR '1'='1'#
```
![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*fmFL48EZGB13-gy6vPdJNA.png)

First SQL Injection Payload Attempt

This will alter the SQL query, letting us skip the need for a specific ID and instead display all users in the database, as the condition ‘1’=’1' is always true.

Our second attempt will be to display the existing tables within the database using the payload:

```c
'UNION SELECT table_name, NULL FROM information_schema.tables #
```
![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*tm0bk72J_pR8ATrpunZ7fA.png)

Listing Tables Using SQL Injection

Next, we’ll retrieve and display the columns of the users table by using the query:

```c
'UNION SELECT column_name, NULL FROM information_schema.columns WHERE table_name= 'users' #
```
![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*FRiVksQa9xGmP4byDHFuSw.png)

Listing Columns in the Users Table Using SQL Injection

We can also access the usernames along with their encrypted passwords.

```c
'UNION SELECT user, password FROM users #
```
![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*8VGM1jcFvB5ij0gFdWZKsQ.png)

Viewing Users Encrypted Passwords with SQL Injection

> **Analyzing Medium Security Source Code**

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*0qi-3CfwD_JNZCTruEEMKg.png)

Medium Security Source Code

After analyzing the code, I noticed the addition of the mysqli\_real\_escape\_string function to the ID input, which escapes special characters and helps protect against SQL injection.

Additionally, the ID input has been changed to a checkbox, making the input handling more efficient.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*nBip2gIc_fO-CVEx_sQUGQ.png)

Testing the Application on Medium Security Level

If we can’t inject the input directly through the form, we can use Burp Suite to do it.

By intercepting the request, we can modify the input parameter id=1 to 1 UNION SELECT user, password FROM users #, send the request, and then view the results in the response.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*ljJdRHuxj_pfMhrIk25X2Q.png)

Injecting SQL Payload Through Burp Suite

> **Analyzing High Security Source Code**

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*Vg7y2NIbqLeXVz1iWKF3vg.png)

High Security Source Code

After analysing the code, I noticed that we can modify our session ID, which will then be used to query the users table.

By clicking on here to change your ID, a new window will open, allowing us to modify our session ID.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*b9n2dU5PNwP_7kYQTchGnw.png)

New Window Displayed After Clicking the Link

So, we can inject our malicious code into it.

```c
' UNION SELECT user, password FROM users #
```
![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*ss-wL9TAEtKX3z0rbP2IBg.png)

Injecting SQL Payload into the New Window

After submitting the code, we are able to retrieve the usernames and passwords.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*O2vQZzQCnorsNpI1bIgPXw.png)

Displaying Users and Their Encrypted Passwords

> **Conclusion**

We looked at how SQL injection vulnerabilities can be exploited in a web application. By modifying input parameters and using tools like Burp Suite, we showed how attackers can bypass security measures and gain access to sensitive data.

## More from Wael Oueslati

## Recommended from Medium

[

See more recommendations

](https://medium.com/?source=post_page---read_next_recirc--7ada1ae784f2---------------------------------------)