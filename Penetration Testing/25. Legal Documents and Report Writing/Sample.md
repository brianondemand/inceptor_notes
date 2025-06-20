## 📄 CYBERSECURITY PROJECT DOCUMENTATION



### **Title: Securing Web Applications Against Common Cyber Threats**

**Author:** Cyber Student  
**Institution:** Inceptor Kenya
**Department:** Computer Science / Cybersecurity  
**Supervisor:** Brian Muiruri
**Date:** June 2025

---

## 🙏 DEDICATION

I dedicate this work to my parents and mentors who have continuously supported and encouraged me throughout my academic journey.

---

## 🫂 ACKNOWLEDGMENT

I would like to express my sincere gratitude to my supervisor, Dr. John Doe, for his invaluable guidance and feedback. Special thanks to my fellow students and the IT staff at XYZ Organization for their assistance and collaboration.

---

## 📘 DEFINITIONS AND ABBREVIATIONS

|Term|Definition|
|---|---|
|**SQLi**|SQL Injection|
|**XSS**|Cross-Site Scripting|
|**MFA**|Multi-Factor Authentication|
|**IDS**|Intrusion Detection System|
|**OWASP**|Open Web Application Security Project|

---

## 📝 ABSTRACT

This project investigates prevalent web application vulnerabilities and demonstrates practical mitigation strategies. Through simulated attacks using tools like SQLMap and Burp Suite, the project tests how input validation, authentication, and proper configuration contribute to secure application deployment. The results confirm that a layered security approach significantly reduces risk exposure. The report concludes with recommendations for developers and organizations to integrate security throughout the development lifecycle.

---

## 📖 CHAPTER ONE: PROJECT OVERVIEW

### 1.1 Background

Web applications are increasingly targeted by cybercriminals due to poor security practices and misconfigurations. Ensuring security by design is now essential.

### 1.2 Problem Statement

Many developers overlook basic security controls, exposing applications to threats like SQL Injection, XSS, and broken authentication.

### 1.3 Objectives

**General Objective:**  
To identify and mitigate common vulnerabilities in web applications.  
**Specific Objectives:**

- To simulate common web attacks
    
- To test and validate protection mechanisms
    
- To document findings and recommendations
    

### 1.4 Research Questions

- What are the most common attack vectors targeting web apps?
    
- Which techniques are most effective in preventing these attacks?
    

### 1.5 Significance of the Study

This research helps developers and businesses understand and implement key security measures, reducing risk exposure.

### 1.6 Scope and Limitations

The project focuses on client-server web applications. It does not cover mobile or desktop application vulnerabilities.

---

## 📚 CHAPTER TWO: LITERATURE REVIEW

This chapter explores previous studies and frameworks relevant to web application security.  
Topics reviewed include:

- OWASP Top 10 vulnerabilities
    
- Role of firewalls and WAFs
    
- Importance of secure coding practices
    
- Related studies on penetration testing and ethical hacking
    

Example source:  
_Anderson, R. (2020). Security Engineering (3rd ed.)._

---

## 🧪 CHAPTER THREE: METHODOLOGY

### 3.1 Research Design

An experimental approach using black-box testing techniques.

### 3.2 Tools and Technologies

- Burp Suite
    
- SQLMap
    
- DVWA (Damn Vulnerable Web App)
    
- Kali Linux
    

### 3.3 Data Collection

Information was gathered by performing test attacks and logging the system responses.

### 3.4 Procedure

1. Setup vulnerable web app environment (DVWA)
    
2. Perform SQLi and XSS attacks
    
3. Apply security measures (e.g., input validation, CSP headers)
    
4. Re-test and analyze effectiveness
    

---

## ⚙️ CHAPTER FOUR: IMPLEMENTATION AND ANALYSIS

### 4.1 System Setup

DVWA hosted on Apache server within Kali Linux VM.

### 4.2 Attack Simulation

Using SQLMap and Burp Suite, vulnerabilities were exploited successfully before applying controls.

### 4.3 Countermeasures Applied

- Parameterized queries
    
- Output encoding
    
- CSP headers
    

### 4.4 Results

After applying mitigation, simulated attacks were blocked or failed, showing reduced vulnerability.

|Attack Type|Status Before|Status After|
|---|---|---|
|SQLi|Successful|Blocked|
|XSS|Successful|Blocked|

---

## 🧾 CHAPTER FIVE: CONCLUSION

### 5.1 Summary

This project demonstrated that web applications are highly vulnerable without proper input validation and configuration.

### 5.2 Findings

- SQLi and XSS were exploitable without protections
    
- Parameterized queries and CSP mitigated attacks
    
- Regular testing is necessary
    

### 5.3 Recommendations

- Use secure coding practices
    
- Employ automated security testing tools
    
- Train developers on OWASP Top 10
    

### 5.4 Future Work

Expand testing to mobile apps and real-world APIs.

---

## 📚 CHAPTER SIX: REFERENCES

1. OWASP. (2023). _Top 10 Web Application Security Risks_. [https://owasp.org](https://owasp.org/)
    
2. Anderson, R. (2020). _Security Engineering_ (3rd ed.). Wiley.
    
3. SQLMap Documentation. [https://sqlmap.org](https://sqlmap.org/)
    

---

## 📎 APPENDICES

### Appendix A: Sample SQLMap Command

```
sqlmap -u "http://localhost/dvwa/vulnerable.php?id=1" --batch --risk=3 --level=5
```

### Appendix B: Screenshots

_(Include labeled screenshots of tests and results)_

---