**Table of Contents**

1. SQL Injection
2. Path Traversal
3. Cross-Site Scripting (XSS)
4. Cross-Site Request Forgery (CSRF)
5. Server-Side Request Forgery (SSRF)
6. Command Injection
7. Log Forging
8. File Upload Vulnerability
9. XML External Entity (XXE)
10. Use of Components with Known Vulnerabilities



## SQL Injection

#### What?

SQL Injection is a web security vulnerability that allows attackers to manipulate SQL queries executed by an application. This can result in unauthorized access to database data, modification of data, or even full control of the database.

#### How it works?

- Applications execute SQL queries that include user-provided data.
- If inputs are not properly validated or sanitized, attackers can inject malicious SQL commands to manipulate the database.
- For example, they can bypass authentication, access unauthorized data, or modify database content.

#### Impact?

1. **Unauthorized Data Access**: Attackers can retrieve sensitive information, such as user credentials or personal data.
2. **Manipulate Data**: Insertion, deletion, or alteration of data.
3. **Service Disruption**: Corrupting or dropping databases can disrupt services.

#### Types

1. **Classic SQL Injection**: Direct injection of malicious queries to modify database behavior.
2. **Blind SQL Injection**: Exploiting applications that do not display errors by observing behavioral changes or time delays.
3. **Time-Based SQL Injection**: Exploits delays in database responses to infer vulnerabilities.
4. **Error-Based SQL Injection**: Extracts database details through error messages.
5. **Union-Based SQL Injection**: Combines queries using `UNION` to fetch additional data.

#### Remediation

1. **Parameterized Queries**: Use prepared statements or query frameworks that separate query structure from input data.
2. **Input Validation**: Strictly validate inputs against expected formats to block malicious inputs. Neutralize special characters in user inputs to prevent query manipulation.
3. **Access Control**: Implement the principle of least privilege for database users.
4. **Error Handling**: Avoid detailed error messages to avoid leaking database information.

## Path Traversal

#### What?

Path Traversal is a security vulnerability that allows attackers to access files or directories outside the intended scope by manipulating file paths in user inputs.

#### How it Works?

- Applications often accept user inputs to locate or access files (e.g., `GET /view?file=example.txt`).
- If these inputs are not properly validated, attackers can manipulate them to traverse directories using patterns like `../` (parent directory) to access restricted files.
- Example: Requesting `file=../../etc/passwd` could give unauthorized access to system files.

#### Impact?

1. **Sensitive Data Exposure**: Access to configuration files, credentials, or other sensitive information.
2. **Code Execution**: If attackers modify files or access executable scripts.
3. **System Compromise**: Exploiting files with privileged data to further attack the system.

#### Types

1. **Basic Path Traversal**: Exploits directory traversal patterns (e.g., `../`) to access unintended files.
2. **Encoded Path Traversal**: Uses URL encoding or alternate representations (e.g., `%2e%2e/`) to bypass simple filters.
3. **Chained Path Traversal**: Combines path traversal with other vulnerabilities to escalate impact.

#### Remediation

1. **Input Validation**: Use whitelisting whenever possible and Only allow inputs matching specific, expected formats (e.g., filenames without special characters).
2. **Path Normalization**: Resolve paths to a **canonical** form and ensure they do not include traversal sequences like `../`.
3. **Restrict File Access**: Limit file access to specific directories (e.g., use a *chroot jail* or sandbox).
4. **Use Secure APIs**: Employ APIs that avoid direct file path handling or include built-in safety mechanisms.
5. **Error Handling**: Avoid exposing detailed error messages about file paths or system structure.

## Cross-Site Scripting

#### What?

Cross-Site Scripting (XSS) is a security vulnerability where an attacker injects malicious scripts into trusted websites or web applications. These scripts execute in the context of a victim’s browser, compromising user data or taking control of browser functionality.

#### How it works?

- Web applications dynamically render user inputs in pages without proper sanitization or escaping.
- Attackers inject malicious scripts (e.g., JavaScript) into these inputs.
- When other users view the affected page, their browsers execute the attacker’s script, leading to data theft or manipulation.

#### Impact?

1. **User Data Theft**: Stealing sensitive data like cookies, session tokens, or credentials.
2. **Session Hijacking**: Taking over user sessions to impersonate them.
3. **Phishing Attacks**: Redirecting users to fake sites to harvest credentials.
4. **System Exploitation**: Using browser vulnerabilities for further attacks.

#### Types

1. **Stored XSS**: Malicious scripts are permanently stored on the server (e.g., in databases or comments) and executed when users access the affected page.
2. **Reflected XSS**: Scripts are embedded in URLs and executed when the victim interacts with the crafted link.
3. **DOM-Based XSS**: The vulnerability exists in the client-side JavaScript, where user input is directly manipulated in the Document Object Model (DOM).

#### Remediation

1. **Input Validation**: Strictly validate user inputs to allow only expected data formats and reject potentially malicious content.
2. **Output Encoding**: Escape user inputs before rendering them in HTML, JavaScript, or other contexts. Use context-specific encoding (e.g., HTML encoding for HTML, JavaScript encoding for scripts).
3. **Use Security Libraries**: Implement frameworks or libraries that auto-sanitize inputs (e.g., output encoding libraries).
4. **Content Security Policy (CSP)**: Enforce policies to restrict script execution to trusted sources only.
5. **Avoid Dangerous Constructs**: Refrain from using `eval()`, `innerHTML`, or other functions prone to injection.
6. **Sanitize Data at Rest**: Filter and clean user inputs before saving them to storage.

## Cross-Site Request Forgery (CSRF)

#### What?

Cross-Site Request Forgery (CSRF) is a web security vulnerability where an attacker tricks a user into performing unintended actions on a web application where they are authenticated, potentially compromising their account or data.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*lQo0ojL9kBrtM7UppdYa7Q.png)

#### How it Works?

- A user logs into a trusted website and has an active session (e.g., authenticated cookies).
- An attacker crafts a malicious request (e.g., a form submission or link) to that website.
- The user unknowingly triggers the malicious request, which the website executes with the user’s credentials.

Example: If a user is logged into a banking site, an attacker could send them a link that transfers money to the attacker’s account, exploiting the user’s authenticated session.

#### Impact?

1. **Unauthorized Actions**: Fund transfers, password changes, or data modification.
2. **Data Breach**: Accessing or altering sensitive information without user consent.
3. **Privilege Escalation**: Exploiting higher privileges to perform administrative tasks.

#### Types

1. **Stored CSRF**: Malicious payloads are stored on the server (e.g., in a forum post) and executed when a user interacts with them.
2. **Reflected CSRF**: Exploits immediate interaction, like clicking on a malicious link or submitting a crafted form.

#### Remediation

1. **Anti-CSRF Tokens**: Generate unique, unpredictable tokens for every user session. Validate these tokens for every sensitive request.
2. **SameSite Cookies:** Set cookies with the `SameSite` attribute to restrict their use to first-party contexts.
3. **User Authentication Checks:** Revalidate user credentials for sensitive actions (e.g., password updates or financial transactions).
4. **Custom Headers**:Require custom headers (e.g., `X-Requested-With`) for requests to distinguish legitimate browser requests from malicious ones.
5. **Limit HTTP Methods**: Use `POST` for sensitive operations and reject GET requests for state-changing actions.
6. **CSP and Referrer Validation**: Use Content Security Policies and referrer validation to ensure requests originate from trusted sources.

## Server-Side Request Forgery (SSRF)

#### What?

Server-Side Request Forgery (SSRF) is a vulnerability where an attacker manipulates a server to make unauthorized requests to internal or external resources, potentially exposing sensitive systems.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*iJJpGluDEPDo7zlR0kZ9qQ.png)

#### How it Works?

- Applications accept user inputs to fetch data or resources.
- If inputs are not validated, attackers can craft requests to internal networks, sensitive endpoints, or malicious external services.
- Example: Exploiting cloud metadata endpoints (e.g., `http://169.254.169.254/metadata`) to access sensitive instance data.

#### Impact?

1. I **nternal Network Scanning:** Attackers can enumerate internal services or infrastructure.
2. **Data Exposure**: Sensitive information like credentials, tokens, or configuration details can be leaked.
3. **Remote Code Execution:** Exploiting internal services via SSRF could lead to code execution.
4. **Cloud Exploitation:** Accessing metadata services can expose cloud credentials and compromise infrastructure.
5. **Denial of Service (DoS)**: Overloading internal or external systems through malicious requests.

#### Types

1. **Basic SSRF:** Attacker sends direct requests to internal or external endpoints.
2. **Blind SSRF:** Exploits SSRF vulnerabilities without a direct response but with observable effects (e.g., logs or time delays).
3. **DNS Rebinding:** Redirects a legitimate domain to an internal IP after DNS resolution, bypassing filters.

#### Remediation

1. **Input Validation:** Only allow URLs from trusted and whitelisted domains. Block private IP ranges (e.g., 127.0.0.1, 10.0.0.0/8) to prevent access to internal networks.
2. **Use Allowlists:** Restrict allowed domains and protocols to only those necessary for the application.
3. **Disable Unnecessary Network Access:** Limit the server’s ability to make outbound requests to the minimum required for its functionality.
4. **Timeouts**: Enforce request timeouts and rate limits to prevent abuse or denial-of-service attacks.
5. **Sanitize Outputs:** Ensure error messages do not reveal sensitive information, such as internal network structure or credentials.

## Command Injection

#### What?

Command Injection when an attacker executes arbitrary system commands on a server by manipulating inputs to exploit insecure command execution.

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*QuFU00l7t_6FMyOUn0_J9Q.png)

#### How it Works?

- Applications often use system commands to perform tasks like file handling, process management, or network communication.
- If user input is included in command execution without proper sanitization, attackers can inject additional commands or malicious payloads.
- **Example**: Passing `; rm -rf /` as input could trigger the deletion of critical server files.

#### Impact?

1. **Unauthorized System Access**: Attackers gain control over the underlying operating system.
2. **Data Breach:** Sensitive information can be stolen or modified.
3. **Service Disruption**: Executing destructive commands can disrupt application functionality or crash the server.
4. **Privilege Escalation**: Exploiting vulnerabilities to gain higher-level access to the system.
5. **Compromise of Other Systems:** Using the server as a pivot point to attack other systems in the network.

#### Types

1. **Blind Command Injection**: The application does not display command execution results, but attackers infer success through side effects (e.g., delays, logs).
2. **Classic Command Injection**: The application directly executes malicious commands and displays their results.

#### Remediation

1. **Input Validation:** Strictly validate and sanitize user inputs to reject special characters or unexpected values.
2. **Use Parameterized APIs**: Use APIs or libraries that execute commands without directly embedding user inputs, such as `ProcessBuilder` in Java.
3. **Whitelist Commands:** Restrict inputs to a predefined set of valid values or commands.
4. **Escaping Inputs:** If input must be included in commands, escape special characters to neutralize their effects.
5. **Least Privilege Principle:** Run applications and commands with the minimum privileges required to operate.
6. **Restrict System Calls:** Avoid using system calls for tasks that can be handled through application logic or APIs.

## Log Forging

#### What?

Log Forging is a security vulnerability where attackers manipulate application logs by injecting malicious inputs, causing inaccurate or misleading log entries. This can be used to hide malicious activities, confuse administrators, or exploit downstream systems that process logs.

#### How it Works?

- Applications often log user inputs or activities for monitoring or debugging purposes.
- If user inputs are not sanitized, attackers can inject control characters or malicious strings into log entries.
- Example: Injecting a new log entry (`\n[ERROR] Unauthorized access detected`) could mislead administrators or mask actual attacks.

#### Impact?

1. **Obfuscation of Malicious Activity**: Attackers can hide evidence of their actions in logs.
2. **Log Poisoning**: Injecting harmful data into logs to exploit systems that parse or analyze logs.

#### Types

1. **Simple Log Forging**: Injecting control characters (e.g., newlines) to alter log formatting.
2. **Log Injection for Exploitation**: Inserting scripts or commands to target systems parsing logs.

#### Remediation

1. **Input Validation**: Sanitize all user inputs before logging to reject control characters like newlines or escape sequences.
2. **Escape User Inputs:** Encode or escape characters in user-provided data to prevent log manipulation.
3. **Structured Logging:** Use structured logging formats like JSON, which minimize the risk of injection by segregating data fields.
4. **Contextual Logging:** Clearly differentiate user inputs from log metadata, ensuring injected data does not affect log interpretation.
5. **Log Monitoring:** Regularly review logs for anomalies or suspicious patterns that may indicate forging attempts.

## File Upload Vulnerability

#### What?

File upload vulnerabilities occur when a web application improperly handles file uploads, allowing attackers to upload malicious files that can compromise the system, execute arbitrary code, or steal sensitive information.

#### How it Works?

- Applications allow users to upload files, but if proper checks and validations aren’t in place, attackers can upload files with malicious content (e.g., scripts, executables).
- These files can then be executed on the server, access sensitive data, or disrupt the system.
- Example: Uploading a PHP shell disguised as an image file, which the server later executes, giving the attacker control.

#### Impact?

1. **Remote Code Execution**: Malicious files can be executed on the server, leading to full system compromise.
2. **Data Breach**: Uploading files that contain malware or scripts can be used to steal sensitive information from the server.
3. **Server Compromise**: Attackers can gain unauthorized access to the underlying operating system and escalate privileges.
4. **Denial of Service (DoS)**: Malicious or large files could overload the system, causing application downtime.

#### Remediation

1. **Input Validation**: Only allow specific, trusted file types (e.g., images, PDFs) and reject any unknown or untrusted formats.
2. **File Size Limitation:** Enforce strict file size limits to prevent resource exhaustion or DoS attacks.
3. **File Name Normalization**: Strip potentially dangerous characters from file names (e.g., `..`, `//`) to prevent path traversal attacks.
4. **Store Files Outside Web Root:** Store uploaded files in a location outside the web root directory to prevent direct access via the browser.
5. **Use Anti-Virus Scanning:** Implement automated antivirus or malware scanning for all uploaded files before processing them.
6. **File Execution Prevention:** Ensure uploaded files cannot be executed as code by setting appropriate file permissions and using web server configurations to block script execution.
7. **Authentication and Authorization:** Restrict file uploads to authenticated and authorized users only.

## XML External Entity (XXE)

#### What?

XML External Entity (XXE) is a vulnerability that occurs when an application processes XML input insecurely, allowing an attacker to inject malicious XML elements that reference external entities. This can lead to data exposure, denial of service, or system compromise.

#### How it Works?

- Applications that accept and parse XML input may include external entities or files referenced within the XML data.
- If the application does not properly validate or disable these external entities, attackers can inject XML that references local or remote resources, such as sensitive files or internal services.
- Example: Attacker injects an XML payload that references `/etc/passwd`, leading to the exposure of system files.

#### Impact?

1. **Data Exposure**: Sensitive internal data or files, such as passwords or configuration files, can be leaked.
2. **Denial of Service (DoS)**: XXE can cause denial of service by triggering infinite entity expansion (also known as the “billion laughs attack”).
3. **Remote Code Execution**: Malicious payloads can exploit XXE to execute commands or access internal systems.
4. **Network Enumeration**: Attackers can use XXE to probe internal services, leading to further attacks on internal infrastructure.

#### Types

1. **Out-of-Band XXE**: The attacker relies on an external entity to send the malicious data to a remote location, bypassing direct response mechanisms.
2. **In-Band XXE**: The attacker injects an entity into the XML document that leads to an immediate and visible impact, such as file inclusion or data leakage.

#### Remediation

1. **Disable External Entities:** Ensure that XML parsers are configured to disallow external entities by disabling `XXE` processing in libraries or frameworks.
2. **Use Secure XML Parsers:** Choose modern, secure XML parsers that do not process external entities by default (e.g., use `XMLReader` with security features in Java).
3. **Input Validation:** Sanitize XML input to ensure it does not contain unexpected or dangerous elements, such as external entity references.
4. **Use Safer Formats:** Where possible, avoid XML for input and consider more secure formats like JSON, which do not support external entities.
5. **Limit File Access:** Ensure XML parsers are restricted from accessing sensitive internal files or services, using sandboxing or security policies.

## Use of Components with Known Vulnerabilities

#### What?

The use of components with known vulnerabilities refers to a security risk where an application relies on third-party libraries, frameworks, or software that have publicly known security flaws, which can be exploited by attackers.

#### How it Works?

- Applications often use third-party components (e.g., libraries, frameworks, or plugins) to speed up development and reduce costs.
- If these components contain known vulnerabilities (e.g., unpatched CVEs), attackers can exploit them to compromise the application or underlying systems.
- Example: An application that uses an outdated version of a library with a known SQL injection vulnerability may allow attackers to inject malicious queries.

#### Impact?

1. **Remote Code Execution**: Attackers can exploit vulnerabilities in components to run arbitrary code on the system.
2. **Data Breach**: Exploiting known vulnerabilities in components can lead to the unauthorized exposure or modification of sensitive data.
3. **Denial of Service (DoS)**: Exploiting vulnerabilities can cause service outages, crashes, or performance degradation.
4. **Privilege Escalation**: Attackers can escalate privileges to gain higher levels of access or control over the system.

#### Types

1. **Outdated Component Vulnerability**: Components with known vulnerabilities due to outdated versions.
2. **Misconfigured Component**: Components that are improperly configured, leading to potential security weaknesses.
3. **Unpatched Vulnerabilities**: Components that have known security issues but have not been patched or updated.

#### Remediation

1. **Component Inventory:** Maintain an up-to-date inventory of all third-party components used in the application, including versions and their dependencies.
2. **Regular Vulnerability Scanning:** Use tools like Snyk, OWASP Dependency-Check, or similar to regularly scan for known vulnerabilities in components.
3. **Keep Components Updated:** Regularly update third-party components to their latest secure versions, and apply security patches as soon as they are released.
4. **Use Trusted Sources:** Only use components from trusted and well-maintained repositories, ensuring they follow best practices for security.
5. **Implement Least Privilege:** Ensure that components are only granted the minimum necessary privileges to reduce the impact of an exploited vulnerability.
6. **Remove Unused Components:** Regularly audit and remove unused or unnecessary third-party components to minimize the attack surface.
7. **Secure Component Configuration:** Follow security guidelines for proper configuration and hardening of third-party components.

---