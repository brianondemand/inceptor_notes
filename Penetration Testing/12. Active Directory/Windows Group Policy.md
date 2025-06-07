
Group Policy is a system within Windows operating systems that allows administrators to centrally manage and configure settings for users and computers within an Active Directory environment.

Simply put, Group Policy is a way for an administrator to control very specific attributes and rules for a collection of computers.

GPOs Reduces manual intervention by applying policies across the network without individual configurations, Strengthens network security by enforcing policies such as password requirements and software restrictions, allows tailors user experience with settings related to desktop appearance and application restrictions for multiple users.

For example, let’s say a library has a lab for public use, but they want the computers inside to only use a restricted internet browser and disable the use of Command Prompt or PowerShell. These objectives can be achieved by using Group Policy.

#### Where are GPOs Applied?

GPOs can be linked to:

1. **Sites**

2. **Domains**

3. **Organizational Units (OUs)**


They follow the **LSDOU hierarchy**:

- **L**ocal

- **S**ite

- **D**omain

- **OU**

## Managing Existing Policies


An administrator has many options for viewing or editing already implemented policies.

**Tools to Manage GPOs**

`Group Policy Management Console (GPMC)` – Centralized tool to create and link GPOs

`Group Policy Editor (GPEdit.msc) `– Used on local machines for editing local policies

`Resultant Set of Policy (RSoP.msc)` – Shows the effective policies applied

`gpupdate /force` – Forces immediate update of GPOs

`gpresult /r` – Shows applied policies on the current computer


The easiest to use is the Group Policy Management Console found in the ‘RSAT: Group Policy Management Tools’ download found under `"Settings" > "Apps" > "Manage optional features" > "Add feature"` on Windows 10 Enterprise.


![][https://miro.medium.com/v2/resize:fit:786/format:webp/1*PJ43ty8N2-5dDeioiWOFrA.png]


The console has a variety of views, buttons, and options, but the most important information is found under the domain — `ad.contoso.com` in this example — on the sidebar. The lines with folder icons are the names of the Organizational Units (OU) in the domain. The policies applied to a specific OU can be found next to the parchment icons located underneath the respective OU folder. Note that any sub-OU automatically inherits the GPOs linked to its parent OU.

All policies, or Group Policy Objects (GPO), are stored under the ‘Group Policy Objects’ folder (also found under the domain). This folder has all of the GPOs in the domain. These GPOs can then be applied, or “linked,” to any desired OU.

When a GPO is linked to an OU, its policies are applied to all computers contained within. For example, if a GPO setting the default wallpaper is applied to an OU then all the computers inside will have the new wallpaper. Any computer that is added to the OU will inherit all of its parent’s GPOs as well.

## Linking an Existing GPO

This can be done in multiple ways, but the easiest is to right-click an OU folder and select ‘Link an Existing GPO.’

![The right-click view of an OU folder](https://miro.medium.com/v2/resize:fit:722/1*78CjAYNeusvsti3BaW3ibA.png)

This will spawn a dialog titled ‘Select GPO’ that contains a list of GPOs found in the domain. Select a GPO and click ‘Ok.’ The GPO is now linked to the OU.

The next step is to ensure that the computers are updated to accept the newly linked GPO. Do this by right-clicking the OU folder and selecting ‘Group Policy Update….’ This will spawn a dialog asking to confirm that an update was requested. Clicking ‘Yes’ will run `gpupdate` on the computers contained in the OU. Note that computers will regularly check for policy compliance, but this step helps to speed up the process.

## Creating a New GPO

Again, this can be done several ways, but the easiest way is to right-click an OU folder and select ‘Create a GPO in this domain, and Link it here….’ Enter a name for the GPO in the ‘New GPO’ dialog. It is best for beginners to select ‘(none)’ as the source for the starter GPO. Clicking ‘OK’ will create a new GPO inside the ‘Group Policy Objects’ folder and then link it to the OU that was right-clicked. Currently the new GPO has no rules or attributes applied.

### Editing a GPO

First, locate the GPO in either the location it is linked or in the ‘Group Policy Objects’ folder. Right-click the GPO and click ‘Edit.’ This will spawn the ‘Group Policy Management Editor.’

![](https://miro.medium.com/v2/resize:fit:770/1*jEaKGHvaLA7dalTKlm_50Q.png)


Editing a GPO can be quite complicated and can have unintended side effects. Despite this, the task can become less daunting by becoming familiar with the policy options contained in both ‘Computer Configuration’ and ‘User Configuration’ sections as it is not always obvious where a desired rule might be. The first is for policies that apply to the computer as a whole (usually this includes all users) while the second is mostly for user-by-user bases.


### Note

- When a computer is moved from one OU (we’ll call it A) to another OU (B), it will be unlinked from the GPOs applied to A and linked to the GPOs applied to B. The unlinking process does not “undo” the changes made by the GPO. This means that the computer will need to be updated (manually or via another GPO) to remove or edit undesirable leftover changes.

- GPOs can interfere with one another, so be sure to change the link order if this happens (done by selecting a folder and clicking the arrows in the folder window).

- Sometimes a GPO will not take effect until after the target computer has been restarted.

- Remember processing order. GPOs are applied first to the local security policy; second, to the GPOs linked to the AD site; third, GPOs linked to the AD domain; fourth, GPOs applied to the OU structure from the top down.


## Practical


#### 1. Disable Use of specific Applications


Let’s prohibit access to the PowerShell for the account managers by adding a GPO to their OU:

1. First Open group Policy Management at the server

![][https://miro.medium.com/v2/resize:fit:786/format:webp/1*DrqU_3HrQmfLluPxHzkJrQ.png]



2. Right click on the domain name the click on create a GPO on this domain

![][https://miro.medium.com/v2/resize:fit:640/format:webp/1*13AbYSiRvHdHokSYPjPCfg.png]


![][https://miro.medium.com/v2/resize:fit:640/format:webp/1*LTFz3lUnm_DCX03vHZKnXQ.png]


3. Right click on the new cretead GPO and select edit:
   
   ![][https://miro.medium.com/v2/resize:fit:640/format:webp/1*xOkRvQ20x176R9U56dNNWA.png]


4. A Group Policy Manager Editor will appear : Select Policies -> Admin Templates -> System -> Don't run specified Windows applications


![][https://miro.medium.com/v2/resize:fit:640/format:webp/1*1I187rF31_YB-iVeJ0Yq5w.png]



5. In the window that opens, on options click on show and then add “powershell.exe”, click Ok and then OK again:


![][https://miro.medium.com/v2/resize:fit:786/format:webp/1*OfiyiCJuOgXW780LiUPnGA.png]




Now let’s prohibit access to the control panel for all the users by adding a GPO to the domain file:

![][https://miro.medium.com/v2/resize:fit:640/format:webp/1*qeJFQkCS28F6qI__u5g07g.png]


Then we will define the policy again:

![][https://miro.medium.com/v2/resize:fit:640/format:webp/1*ezbDeNWmp8Ci31sDmpGIXg.png]


In the window that opens, mark Enable and then click Ok

![][https://miro.medium.com/v2/resize:fit:786/format:webp/1*1ceM8OcbUJMtWmY99PyHZg.png]


Now all the users in the Cyber.local domain doesn’t have access to control panel.

![][https://miro.medium.com/v2/resize:fit:640/format:webp/1*NsZDEsN_F32gErYCCR3V8Q.png]


The effects of the policies are determined by the hierarchy of the folders in which the GPOs are located — the closer the location is to the entity, the stronger the policy is, and when there is a conflict between 2 policies, the stronger policy is the one that will apply to the object.

#### Enabling GPOs for a specific group

So lets add this GPO like we did before and set the “Prohibit access to control panel” to **Disable** on the specific group of users:

![][https://miro.medium.com/v2/resize:fit:640/format:webp/1*WLn7RSuXChx-zOLNcjMy3w.png]


![][https://miro.medium.com/v2/resize:fit:640/format:webp/1*QiYW8g_ZLTd5xtpLijUkGA.png]


The policy updates usually take a few days to be updated, so in order to check now if they work, we will perform the update by executing the line of code:

```cmd
gpupdate/force
```


![][https://miro.medium.com/v2/resize:fit:786/format:webp/1*hex69IMWTB3ryJR5QBwhlQ.png]


If we want the GPO of preventing access to the control panel to be the strongest even though it is located in Cyber.local and will prevent access in any case, we can do enforce on the GPO which, even if it is located further in the folder hierarchy, it has more influence than a closer location and in the case of a conflict, it is the one that will apply on the entity.

We will do this by right-clicking on the GPO and checking Enforce:

![][https://miro.medium.com/v2/resize:fit:786/format:webp/1*vW8pgUAq7xgqtAdj-MQ9vw.png]


We will perform again **gpupdate/force** at the server cmd again and reset the computer from which the users log in.

---


#### 2. Configure Windows Update Settings via GPO

To manage Windows Updates across domain computers:

**Step 1: Create and Link a GPO**

- Open **Group Policy Management Console (GPMC)**.
    
- Right-click the desired OU or domain and select **"Create a GPO in this domain, and Link it here..."**.
    
- Name the GPO (e.g., "Windows Update Settings").


**Step 2: Configure the GPO**

- Right-click the newly created GPO and select **Edit**.
    
- Navigate to:
    
    - **Computer Configuration** → **Policies** → **Administrative Templates** → **Windows Components** → **Windows Update**.
        
- Double-click **Configure Automatic Updates**.
    
- Select **Enabled**.
    
- In the options section, choose the desired configuration (e.g., "Auto download and schedule the install").
    
- Set the schedule as needed (e.g., every day at 3:00 AM).
    
- Click **OK** to apply the settings


---


#### 3. Software Installation via GPO

To deploy software across domain computers:


**Step 1: Prepare the Software Package**

- Ensure the software is in `.msi` format.
    
- Place the `.msi` file in a shared network folder accessible to all target computers.
    
- Use the Universal Naming Convention (UNC) path (e.g., `\\ServerName\Share\Software.msi`)
  
  

**Step 2: Create and Link a GPO**

- Open **Group Policy Management Console (GPMC)**.
    
- Right-click the desired **Organizational Unit (OU)** or domain and select **"Create a GPO in this domain, and Link it here..."**.
    
- Name the GPO (e.g., "Software Deployment").



**Step 3: Configure the GPO**

- Right-click the newly created GPO and select **Edit**.
    
- Navigate to:
    
    - **Computer Configuration** → **Policies** → **Software Settings** → **Software Installation**.
        
- Right-click on **Software Installation**, choose **New** → **Package**.
    
- In the dialog box, enter the UNC path to the `.msi` file.
    
- Choose **Assigned** and click **OK**.


**Note:** The software will be installed the next time the target computers start up.

---

## Group Policy Management Editor


The **Group Policy Management Editor (GPME)** is the tool used to configure settings within a Group Policy Object (GPO). It is part of the **Group Policy Management Console (GPMC)**, which allows centralized administration of Group Policy across an Active Directory (AD) environment.


When you **edit a GPO**, the Group Policy Management Editor opens, showing two main sections:

```pgsql
Computer Configuration 

User Configuration
```

Each contains multiple subcategories for configuring specific settings.


###  1. Computer Configuration

These settings apply to **the computer**, no matter which user logs in. This is ideal for enforcing system-wide rules like software installation, security settings, and Windows Update configurations.

### ➤ Subcategories:

#### Software Settings

- Used primarily to **install software** via `.msi` packages.

- Example: Deploy Microsoft Office to all computers in an OU.


####  Windows Settings

- Contains configurations such as:
    
    - **Scripts (Startup/Shutdown)** – run custom scripts when a machine starts up or shuts down.
    
    - **Security Settings** – control account policies, firewall rules, user rights assignments, etc.
    
    - **Policy-based QoS** – configure network traffic prioritization.
    

#### Administrative Templates

- A huge collection of **registry-based settings** that control system behavior and UI.
    
- Organized under categories like:
    
    - **System** – manage power settings, logon behavior, and more.
    
    - **Windows Components** – configure Windows Defender, Windows Update, Remote Desktop, etc.
    
    - **Network** – manage offline files, DNS client settings, etc.
    

---

###  2. User Configuration

These settings apply to the **user profile**, regardless of which computer the user logs into.

### ➤ Subcategories:

#### Software Settings

- Less commonly used, but can assign or publish applications to users.


#### Windows Settings

- Includes:
    
    - **Scripts (Logon/Logoff)** – configure scripts to run at user logon/logoff.
    
    - **Folder Redirection** – redirect folders like Desktop, Documents to network locations.
    

#### Administrative Templates

- Similar to Computer Configuration but user-focused.
    
- Examples:
    
    - Disable Control Panel access
    
    - Hide system tray icons
    
    - Prevent access to Registry Editor
    
    - Block apps like PowerShell, cmd, or Control Panel
    

---

## 🖼️ Visual Example (Structure)

```
Group Policy Management Editor
├── Computer Configuration
│   ├── Software Settings
│   ├── Windows Settings
│   └── Administrative Templates
│       ├── System
│       ├── Network
│       └── Windows Components
└── User Configuration
    ├── Software Settings
    ├── Windows Settings
    └── Administrative Templates
        ├── Start Menu and Taskbar
        ├── Desktop
        └── Control Panel
```

---

