
Network outages, hacking, computer viruses, and similar incidents affect our lives in ways that range from inconvenient to life-threatening. Akamai found in its research, for the *State of the Internet Security Report* that attacks on web applications increased by 59% percent from Q4 2017 to Q1 2018. These grim statistics make it clear that application security is more important than ever. This article will help you unfold the concept of **application security**.

Let’s take a look at the topics covered in this Application Security article:

1. What is cybersecurity?
2. What is application security and why is it important?
3. Application security checklist
4. What is SQL Injection?

## What is Cybersecurity?

Today, our entire modern way of life, from communication to e-commerce, fundamentally depends on the Internet. We exchange money, play games, read the news, do shopping and a lot of other things using the internet. The Internet informs, entertains and connects us. But this luxury of using internet comes with a price — **security**.

Cybercrime is a global problem that’s been dominating the news. It poses threat to an individual’s security and an even bigger threat to large enterprises, banks and government. The past year featured daily news about cyber attacks, data breaches, and software vulnerabilities. But the good thing is that even with this flawed internet, there are simple things that we can do to protect ourselves from these attacks. This is where cybersecurity comes into the picture. Here is a quick definition:

> *“Cybersecurity is the body of technologies, processes, and practices designed to protect networks, computers, programs and data from attack, damage or unauthorized access.”*

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*_qmYswIJ-yKCn_kqn72kMw.png)

Ensuring cybersecurity requires the coordinated efforts throughout an information system and this include:

- Network security
- Application security
- Information security
- Operational security
- Disaster recovery
- End-user education

Let’s explore application security in detail.

## What is Application Security & Why is it Important?

Cybercrime has risen exponentially in recent years, exposing a wide range of vulnerabilities in web and mobile applications. Most of these security issues are caused due to poor coding practices, which lead to poor application code integrity. In other words, hackers are exploiting application-layer loopholes in poorly-coded applications to initiate their attacks.

***Web application security is the process of protecting websites and online services against different security threats that exploit vulnerabilities in an application’s code****.* Common targets for web application attacks are content management systems (e.g., WordPress), database administration tools (e.g., phpMyAdmin) and Software-as-a-Service(SaaS) applications.

***Reasons, why web-applications seem to be the most favorite target, are:***

## Coding practices

- If the code is poorly written hackers can exploit application-layer loopholes to initiate an attack
- If the code is complex, it increases the likelihood of unattended vulnerabilities and malicious code manipulation

## Ease Of Execution

- Most attacks can be easily automated and launched indiscriminately against thousands, or even tens or hundreds of thousands of targets at a time.
- Cybercriminals get paid in bulk amount to attack applications

Hence organizations failing to secure their web applications run the risk of being attacked. And this is mostly due to vulnerabilities present in the application. Application vulnerabilities are creating havoc in today’s cyberspace giving leeway for different kinds of attacks.

***Let’s take a look at a few leading attacks on web applications:***

## SQL Injection:

Here, the perpetrator uses malicious SQL code to manipulate a backend database so that he/she get his/her hands on sensitive information

## Cross-site Scripting(XSS):

XSS occurs when the attacker injects malicious code directly into an application, thereby gaining access to accounts, activate Trojans or modify page content

## Remote File Inclusion:

Hacker injects a file onto a web application server. By doing so he can execute malicious scripts or code within the application, as well as steal data and manipulate it

## Cross-site Request Forgery(CSRF):

It’s caused when a malicious web application makes a user’s browser perform an unwanted action in a site to which he is logged into.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*rt40wyq1T8bVcmOEaVNB9w.png)

Well, these are few most popular types of attacks, that exploit vulnerabilities in an application to initiate the attack. OWASP (Open web application security project) lists top 10 application vulnerabilities along with the risk, impact, and countermeasures, every 3–4 years.

## Application security checklist

‘Prevention is better than cure’. Most of the time organizations have countermeasures to ensure safety against these attacks. These countermeasures can take the form of software, hardware, and modes of behavior.

## Software countermeasures include:

- ***Web application firewalls:*** Firewalls are usually designed to examine incoming traffic to block attack attempts, thereby compensating for any code manipulation
- ***Pop-up blockers:*** Also known as pop-up killers prevents pop-ups from displaying in a user’s Web browser
- ***Cryptography:*** Different kind of encryption and decryption algorithms can be used to secure all the data transmissions
- ***Spyware detection programs:*** Variety of spyware detection and spyware removal programs can be installed to prevent cyber attacks

## Hardware countermeasures include:

- A router that can prevent the IP address of an individual computer from being directly visible on the Internet
- Biometric authentication systems that identify third-party hosted content, keeping your application safe
- Intrusion detectors and alarms

## Behavioral countermeasures include:

- Frequent deletion of stored cookies and temporary files from Web browsers
- Regular installation of updates and patches for operating systems
- Regular scanning for viruses and other malware
- Refraining from opening e-mail messages and attachments from unknown senders

Today, cyber threats are so routine and sophisticated that they seem almost impossible to prevent. Yet security programs continue to evolve new defenses as cyber-security professionals identify new threats and new ways to combat them.

Earlier, we discussed different types of attacks. Let’s explore one of the attacks in detail.

## What is SQL Injection?

***SQL injection, also known as SQLI, is a common attack that uses malicious SQL code for backend database manipulation to access information that was not intended to be displayed.***

A successful injection attack may result in the unauthorized viewing of user lists, the deletion of entire tables, and, in certain cases, the attacker gaining administrative rights to a database, all of which are highly fatal to a business. SQL injection usually occurs when you ask a user for input, like their username/ userid, and instead of a name/id, the user gives you an SQL statement that you will **unknowingly** run on your database.

Look at the following example:

```hs
txtUserId = getRequestString("UserId"); 
txtSQL = "SELECT * FROM Users WHERE UserId = " + txtUserId;
```

The original purpose of the code was to create an SQL statement to select a user, with a given user id. A user with malicious intentions can input this: **User Id:***105 OR 1=1*

Well, the input is valid, in fact, it will return ALL rows from the “Users” table because **OR 1=1** is always TRUE. This way a hacker might get access to all the usernames and passwords in a database, by simply inserting random data.

Seems simple and dangerous!

---