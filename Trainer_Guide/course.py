import os

# Define the course structure
course_outline = {
    "Beginner": [
        "Introduction to Cybersecurity",
        "Types of Cyber Threats and Attacks",
        "Basic Networking Concepts",
        "Introduction to Operating Systems (Windows & Linux)",
        "Cybersecurity Terminologies",
        "CIA Triad (Confidentiality, Integrity, Availability)",
        "Password Security and Authentication",
        "Firewalls and Antivirus Basics",
        "Safe Web Browsing and Email Security",
        "Introduction to Cryptography",
        "Cyber Hygiene and Best Practices",
        "Social Engineering and Phishing Awareness",
        "Security Policies and Compliance Overview",
        "Cybersecurity Careers and Certifications",
        "Virtualization and Lab Setup (VMs, Kali Linux, etc.)"
    ],
    "Intermediate": [
        "Network Security and Protocols (TCP-IP, DNS, DHCP)",
        "Vulnerability Assessment and Scanning",
        "Common Attack Vectors (SQLi, XSS, CSRF)",
        "Introduction to Ethical Hacking and Penetration Testing",
        "Wireless Security (Wi-Fi Attacks, WPA-WPA2 Cracking)",
        "Secure System Administration",
        "Log Analysis and SIEM Introduction",
        "Web Application Security",
        "Malware Types and Analysis Basics",
        "Encryption Algorithms and Key Management",
        "Intrusion Detection and Prevention Systems (IDS-IPS)",
        "Incident Response and Handling",
        "Security Auditing and Risk Management",
        "Linux Security (User Permissions, Hardening)",
        "Digital Forensics Basics"
    ],
    "Advanced": [
        "Advanced Penetration Testing Techniques",
        "Reverse Engineering and Binary Exploitation",
        "Advanced Malware Analysis",
        "Web Application Pentesting (OWASP Top 10 Deep Dive)",
        "Advanced Network Attacks (MITM, DNS Spoofing, ARP Poisoning)",
        "Red Teaming vs Blue Teaming",
        "Threat Hunting and Threat Intelligence",
        "Cloud Security (AWS, Azure, GCP Security Practices)",
        "Advanced Cryptography and PKI",
        "Exploit Development",
        "Secure Software Development Lifecycle (SSDLC)",
        "Zero-Day Exploits and Vulnerability Research",
        "Security Operations Center (SOC) Practices",
        "Mobile Security and Reverse Engineering (Android-iOS)",
        "Capture The Flag (CTF) Challenges and Simulated Labs"
    ]
}

# Base directory
base_dir = "Cybersecurity_Course"

# Create the folders and files
for level, topics in course_outline.items():
    level_dir = os.path.join(base_dir, level)
    os.makedirs(level_dir, exist_ok=True)
    for idx, topic in enumerate(topics, 1):
        # Clean up topic to make a filename-safe string
        safe_topic = topic.replace(" ", "_").replace("/", "-").replace("(", "").replace(")", "").replace("–", "-")
        filename = f"{idx:02d}_{safe_topic}.md"
        file_path = os.path.join(level_dir, filename)
        with open(file_path, "w") as f:
            f.write(f"# {idx}. {topic}\n\n(Write your content here)")

print("Numbered course outline folders and files created successfully.")
