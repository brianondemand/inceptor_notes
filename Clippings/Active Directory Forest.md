```
Active Directory Forest
└── Domain: example.com
    ├── OU: HR
    │   ├── Users
    │   └── Computers
    │
    ├── OU: IT
    │   ├── Users
    │   └── Computers
    │
    ├── OU: Sales
    │   ├── Users
    │   └── Computers
    │
    └── OU: Admins
        ├── Domain Admins
        └── IT Support

```

### 🔹 Breakdown:

- **Forest**: The top-level container — may have one or more domains.

- **Domain**: The main boundary (e.g., `example.com`) — holds users, computers, and OUs.

- **OUs (Organizational Units)**: Departments or logical groups inside the domain.

- **Users/Computers**: Actual AD objects stored in OUs.