
Learn to efficiently search the Internet and use specialized search engines and technical docs.

A quick Google search for “learn cyber security” returned around 600 million hits, while a search for “learn hacking” returned more than double that number! The number might have grown even further when you go through this room.

We are surrounded by information. Do you prefer to surrender in the face of information overload and accept the first few results you get? Or do you like to acquire the necessary search skills to find and access what you are looking for?


## Evaluation of Search Results

On the Internet, everyone can publish their writings. It can be in the form of blog posts, articles, or social media posts. It can be even in more subtle ways, such as by editing a public wiki page. This ability makes it possible for anyone to voice their unfounded claims.

It is our job, as readers, to evaluate the information. We will mention a few things to consider when evaluating information:

- **Source**: Identify the author or organization publishing the information. Consider whether they are reputable and authoritative on the subject matter. Publishing a blog post does not make one an authority on the subject.
  
- **Evidence and reasoning**: Check whether the claims are backed by credible evidence and logical reasoning. We are seeking hard facts and solid arguments.
  
- **Objectivity and bias**: Evaluate whether the information is presented impartially and rationally, reflecting multiple perspectives. We are not interested in authors pushing shady agendas, whether to promote a product or attack a rival.
  
- **Corroboration and consistency**: Validate the presented information by corroboration from multiple independent sources. Check whether multiple reliable and reputable sources agree on the central claims.


### Snake Oil

In cybersecurity, "**snake oil**" refers to **products or solutions** that are marketed as highly effective but are actually either ineffective, fraudulent, or exaggerated in their claims. These products often promise to solve major security problems but lack real functionality or fail to address the issues they claim to fix. The term derives from the historical sale of fake medicine, which was promised to cure various ailments but had no real benefits. In the cybersecurity context, it's a warning to be cautious about overhyped tools that don't live up to expectations.

## Search Engines

Every one of us has used an Internet search engine; however, not everyone has tried to harness the full power of an Internet search engine. Almost every Internet search engine allows you to carry out advanced searches. Consider the following examples:

- Google
- Bing
- DuckDuckGo

Let’s consider the search operators supported by Google.

- `"exact phrase"`: Double quotes indicate that you are looking for pages with the exact word or phrase. For example, one might search for `"passive reconnaissance"` to get pages with this exact phrase.
  
- `site:`: This operator lets you specify the domain name to which you want to limit your search. For example, we can search for success stories on TryHackMe using `site:tryhackme.com success stories`.


`site:linkedin.com "recruiter"`
  
- `-`: The minus sign allows you to omit search results that contain a particular word or phrase. For example, you might be interested in learning about the pyramids, but you don’t want to view tourism websites; one approach is to search for `pyramids -tourism` or `-tourism pyramids`.
  
- `filetype:`: This search operator is indispensable for finding files instead of web pages. Some of the file types you can search for using Google are Portable Document Format (PDF), Microsoft Word Document (DOC), Microsoft Excel Spreadsheet (XLS), and Microsoft PowerPoint Presentation (PPT). For example, to find cyber security presentations, try searching for `filetype:ppt cyber security`.
  
## Specialized Search Engines

#### Shodan

Let’s start with **Shodan**, a search engine for devices connected to the Internet. It allows you to search for specific types and versions of servers, networking equipment, industrial control systems, and IoT devices. 

You may want to see how many servers are still running Apache 2.4.1 and the distribution across countries. 

To find the answer, we can search for `apache 2.4.1`, which will return the list of servers with the string “apache 2.4.1” in their headers.


![The results of searching for apache 2.4.1 on the Shodan website.](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/5f04259cf9bf5b57aed2c476-1718112514634)  



#### Censys

At first glance, Censys appears similar to Shodan. However, Shodan focuses on Internet-connected devices and systems, such as servers, routers, webcams, and IoT devices. 

Censys, on the other hand, focuses on Internet-connected hosts, websites, certificates, and other Internet assets. 

Some of its use cases include enumerating domains in use, auditing open ports and services, and discovering rogue assets within a network. You might want to check [Censys Introductory Use Cases](https://docs.censys.com/docs/ls-introductory-use-cases#/).

![The results of searching for apache 2.4.1 on the Censys website.](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/5f04259cf9bf5b57aed2c476-1718112720346)  

#### VirusTotal

**VirusTotal**  is an online website that provides a virus-scanning service for files using multiple antivirus engines. It allows users to upload files or provide URLs to scan them against numerous antivirus engines and website scanners in a single operation. They can even input file hashes to check the results of previously uploaded files.

The screenshot below shows the result of checking the submitted file against 67 antivirus engines. Furthermore, one can check the community's comments for more insights. Occasionally, a file might be flagged as a virus or a Trojan; however, this might not be accurate for various reasons, and that's when community members can provide a more in-depth explanation.

![Checking the detection of a certain zip file on the VirusTotal website.](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/5f04259cf9bf5b57aed2c476-1718112692359)  

#### Have I Been Pwned

**Have I Been Pwned** (HIBP) does one thing; it tells you if an email address has appeared in a leaked data breach. Finding one’s email within leaked data indicates leaked private information and, more importantly, passwords. Many users use the same password across multiple platforms, if one platform is breached, their password on other platforms is also exposed. Indeed, passwords are usually stored in encrypted format; however, many passwords are not that complex and can be recovered using a variety of attacks.

![The results for an email address on the Have I Been Pwned website.](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/5f04259cf9bf5b57aed2c476-1718112534973)  


---


## Vulnerabilities and Exploits

#### CVE

We can think of the Common Vulnerabilities and Exposures (CVE) program as a dictionary of vulnerabilities. It provides a standardized identifier for vulnerabilities and security issues in software and hardware products. Each vulnerability is assigned a CVE ID with a standardized format like `CVE-2024-29988`. This unique identifier (CVE ID) ensures that everyone from security researchers to vendors and IT professionals is referring to the same vulnerability, [CVE-2024-29988](https://nvd.nist.gov/vuln/detail/CVE-2024-29988) in this case.

The MITRE Corporation maintains the CVE system. For more information and to search for existing CVEs, visit the [CVE Program](https://www.cve.org/) website. Alternatively, visit the [National Vulnerability Database](https://nvd.nist.gov/) (NVD) website. The screenshot below shows CVE-2014-0160, also known as Heartbleed.

![The CVE-2014-0160 vulnerability on the CVE Program website](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/5f04259cf9bf5b57aed2c476-1718112739122)  

#### Exploit Database

There are many reasons why you would want to exploit a vulnerable application; one would be assessing a company’s security as part of its red team. Needless to say, we should not try to exploit a vulnerable system unless we are given permission, usually via a legally binding agreement.

Now that we have permission to exploit a vulnerable system, we might need to find a working exploit code. One resource is the [Exploit Database](https://www.exploit-db.com/). The Exploit Database lists exploit codes from various authors; some of these exploit codes are tested and marked as verified.

![The results of the search for heartbleed on the Exploit Database website](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/5f04259cf9bf5b57aed2c476-1718112752814)  



#### GitHub

[GitHub](https://github.com/), a web-based platform for software development, can contain many tools related to CVEs, along with proof-of-concept (PoC) and exploit codes. To demonstrate this idea, check the screenshot below of search results on GitHub that are related to the Heartbleed vulnerability.

![The results of the search for CVE-2014-0160 on the GitHub website.](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/5f04259cf9bf5b57aed2c476-1718112771383)  


---
