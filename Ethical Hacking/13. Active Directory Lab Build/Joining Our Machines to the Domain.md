Go ahead and start up all virtual machines (The 2 windows OS and your Domain controller)

![](https://i.imgur.com/8IW9Cd7.png)

Now we need to join the 2 windows server with our domain controller, Let first of all start with user **frankcastle**.

- Navigate to the Network icon on the **Task bar** and click **Network and internet settings**

![](https://i.imgur.com/hokvKkE.png)

- You should now see the settings window, Scroll down and click **Change adapter options**

![](https://i.imgur.com/L2Kn3Pg.png)

- You should see another **Network connections** tab, Double click **Ethernet0** and click properties on the next pop-up

![](https://i.imgur.com/Z1lpzAz.png)

- You should now see another window, double click the **(TCP/IPV4)** item to bring up another pop-up window

![](https://i.imgur.com/SMDrVwj.png)

- Now click **Use the following DNS server addresses** and add the IP address of your domain controller to the the **preferred DNS server** box, then click **OK** (You can use **ipconfig** to check for the IP of your DC in command prompt)

![](https://i.imgur.com/I1aF2G4.png)

- After clicking **OK** on the previous window, you will see another underlying window, make sure to click **OK** again to save the settings

![](https://i.imgur.com/YGRlvBb.png)

**MAKE SURE TO REPEAT THIS SAME STEPS FOR THE USER "PETERPARKER"**
#### Joining the domain

We can go back to the user "frankcastle" and on the windows search bar, type in the keyword **domain** ,  you should see **Access work or school** settings, click it.

![](https://i.imgur.com/N8F08Dt.png)

On the next pop-up window click **Connect**

![](https://i.imgur.com/lkFjcdk.png)

Since we are joining the domain we don't need to input any Email , click the Alternate action, **join this  device to a local Active Directory domain**

![](https://i.imgur.com/NGTOgco.png)

Now we can type in our Domain name, in my case it is **MARVEL.local** and immediately you should see another pop-up window asking for a `Username` and `Password`

![](https://i.imgur.com/BQJGPUS.png)

![](https://i.imgur.com/r345DzN.png)

Now the User name is `administrator` and password is `P@$$w0rd!` , you should remember what the username and password is

On the next window is the **Add account** , make sure to set the account type to **Administrator** then hit **Next** and then **Restart now**.

![](https://i.imgur.com/JbuTTwE.png)

**NOW GO AHEAD AND DO THIS EXACT SAME THING FOR USER "PETERPARKER"**
#### Confirmation to check if we did Join this Machines

Now we can login to our Domain Controller, Navigate to server manager then **Tools** >> **Active directory Users and Computers**. 

![](https://i.imgur.com/rLexQpQ.png)

![](https://i.imgur.com/ELLxfjl.png)

Now we can go to **THEPUNISHER** VM and login as **MARVEL\administrator** with the password `P@$$w0rd!` (Make sure to do this same thing for **SPIDERMAN** VM)

![](https://i.imgur.com/687Uvsy.png)

![](https://i.imgur.com/K3JyorK.png)

Once the above is done, we can go back to our **THEPUNISHER** VM and on the search bar, type in the keyword **users** and click on **Edit local users and groups**

![](https://i.imgur.com/dJCrzez.png)

Now you should see another window, click on users and you should see the various accounts created

![](https://i.imgur.com/U6oV2uD.png)

Right-click on the administrator account and click **Set password** >> **Proceed**

![](https://i.imgur.com/275xd2t.png)

So we can now set a password, mine will be `Password1!` , then hit **OK**

![](https://i.imgur.com/nCToKnl.png)

Right click on the administrator account again and click **properties** , then make sure the **Account is disabled** option is unchecked (We are doing this cos' it is a vulnerable lab, in best practices, that should be checked)

![](https://i.imgur.com/jJWiZZ1.png)

Now we can click on **groups** also then right click on **administrators** >> **properties**


![](https://i.imgur.com/XXoOjC9.png)

Click **Add**

![](https://i.imgur.com/0Vd0oQH.png)

Type in **fcastle** 

![](https://i.imgur.com/jL0EhHx.png)

Then **Apply** >> **OK**

![](https://i.imgur.com/s9cneWv.png)

![](https://i.imgur.com/OqI9RMv.png)

Now head over to **File explorer** and click on the **Network** folder, Hit  **Ok** if you are prompted to turn it on

![](https://i.imgur.com/cOHV1C5.png)

Here you can click the **Click to change** prompt and click **Turn on network.......**

![](https://i.imgur.com/mOEKPHR.png)

Immediately you should see our **HYDRA-DC** (If you don't see it then windows firewall did alot of work, make sure to turn it off)

![](https://i.imgur.com/Hlc9xGf.png)

**NOW DO THIS SAME THING FOR USER SPIDERMAN, BUT WHEN YOU GET TO GROUPS MAKE SURE TO STOP, COS' WE ARE SETTING 2 ADMINISTRATORS FOR THIS ONE**

Right-click on **Administrators** and as usual click **properties**

![](https://i.imgur.com/lXioRCe.png)

The first one is **pparker** , click **Check Names** and then **OK**

![](https://i.imgur.com/CqBJ3Dx.png)

The second one is **fcastle** , **Check Names** then **OK**

![](https://i.imgur.com/zfjCrSb.png)

The reason why we are doing Check names is to see if it exist, if it does we should get the output as shown below, if it does not which is not suppose to be, we should get a pop-up

![](https://i.imgur.com/z80stjv.png)

Now click **Apply** and then **OK**

![](https://i.imgur.com/pKdHitK.png)

**NOW REPEAT THE SAME CONCEPT FOR THE NETWORK, NAVIGATE TO FILE EXPLORER, ENABLE NETWORK AND YOU SHOULD SEE HYDRA-DC**

![](https://i.imgur.com/loxzNw2.png)

Now sign-out from this session and let login with the user **peterparker** on SPIDERMAN VM, Click **Other users** on the sign-in page

![](https://i.imgur.com/M75leWl.png)

Then do `.\` followed by the username which is peterparker, so it should look like **.\peterparker** and then type in your password

![](https://i.imgur.com/phKLyr8.png)


Now navigate to **File explorer** >> **This PC** >> **Computer** >> **Map network drive**

![](https://i.imgur.com/P4IFECr.png)

On the next window which is **Map Network drive** , input it as seen below, also make sure **Connect using different credentials** is turned on

![](https://i.imgur.com/AqHlUAg.png)


The next screen type in your admin credentials which is `administrator:P@$$w0rd!` and you should see it mapped under **Network Locations**

![](https://i.imgur.com/5ASw8pk.png)

![](https://i.imgur.com/CERDFDd.png)

**THIS CONCLUDES OUR VULNERABLE ACTIVE DIRECTORY LAB WITH ONE DOMAIN CONTROLLER AND TWO WINDOWS CLIENT, HAVE FUN WHILE ATTACKING**

