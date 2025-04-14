
Configure the following settings on each of the six Windows computers that are not joined to an Active Directory domain. These settings implement the organization's security policy.

---

## 1. Password Policy

**Open Local Security Policy:**
- Press `Win + R` → type `secpol.msc` → Enter  
- Navigate to: `Account Policies > Password Policy`

**Set the following:**
- **Minimum password length**: `8`
- **Maximum password age**: `90`
- **Minimum password age**: `1`
- **Enforce password history**: `8`
- **Password must meet complexity requirements**: `Enabled`

> Complexity requires 3 of the 4:  
> - Lowercase letter  
> - Uppercase letter  
> - Number  
> - Symbol

---

## 2. Account Lockout Policy

Navigate to: `Account Policies > Account Lockout Policy`

**Configure:**
- **Account lockout threshold**: `5`
- **Account lockout duration**: `5 minutes`
- **Reset account lockout counter after**: `5 minutes`

---

## 3. Audit Policy

Navigate to: `Local Policies > Audit Policy`

**Enable Success and Failure for all:**
- Audit account logon events
- Audit account management
- Audit logon events
- Audit object access
- Audit policy change
- Audit privilege use
- Audit process tracking
- Audit system events

> Some settings like “Audit directory service access” may not apply on standalone PCs.

---

## 4. Automatic Logout After 30 Minutes of Inactivity

**Open Local Group Policy Editor:**
- Press `Win + R` → type `gpedit.msc` → Enter  
- Navigate to:  
  `Computer Configuration > Windows Settings > Security Settings > Local Policies > Security Options`

**Set:**
- **Interactive logon: Machine inactivity limit** → `1800 seconds (30 minutes)`

> Only applicable to Windows 8.0 and 8.1

---

## 5. Require Login Before Removing Laptop from Docking Station

Navigate to:  
`Computer Configuration > Administrative Templates > System > Device Removal`

**Enable:**
- **Prevent undocking without logging on**

---

## 6. Login Warning Message

Navigate to:  
`Computer Configuration > Windows Settings > Security Settings > Local Policies > Security Options`

**Set the following:**
- **Interactive logon: Message title for users attempting to log on** → `Caution:`
- **Interactive logon: Message text for users attempting to log on** →  
  `Your activity is monitored. This computer is for business use only.`

---

## 7. Password Expiry Reminder

Navigate to:  
`Computer Configuration > Windows Settings > Security Settings > Local Policies > Security Options`

**Set:**
- **Interactive logon: Prompt user to change password before expiration** → `7 days`

---

## 8. Repeat Configuration on All PCs

Repeat the above steps on all 6 standalone Windows computers.

To save time:
- Export/import the configuration using `secedit` or 
- Use Microsoft’s `LGPO.exe` tool for automation

Would you like a pre-made `.inf` or `.reg` file for bulk setup?
