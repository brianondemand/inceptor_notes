
## **DTP (Dynamic Trunking Protocol) Basics**

🔹 **What is DTP?**

- Cisco proprietary protocol that automates the negotiation of switch port mode (trunk or access).
- It operates only on **Cisco switches** and is enabled by default.

🔹 **How DTP Works?**

- Allows two Cisco switches to **dynamically form a trunk** if their settings match.
- Without DTP, administrators must **manually configure switch ports** as either access or trunk.

🔹 **DTP Modes and Their Effects**

- **Dynamic Auto:** Passive mode, forms a trunk **only if the other switch actively requests it**.
- **Dynamic Desirable:** Actively tries to form a trunk with the connected switch.
- **Trunk:** Forces the port to always be a trunk.
- **Access:** Forces the port to always be an access port (disables trunking).
- **Nonegotiate:** Disables DTP on the port (no DTP packets sent).

🔹 **Security Considerations**

- **DTP should be disabled on all switchports** unless explicitly needed.
- Attackers can exploit DTP to **force unauthorized trunk links** and gain access to VLANs.

🔹 **Key Commands**

```bash
switchport mode access  # Sets port to access mode
switchport mode trunk   # Sets port to trunk mode
switchport mode dynamic auto  # Enables passive trunk negotiation
switchport mode dynamic desirable  # Enables active trunk negotiation
switchport nonegotiate  # Disables DTP on the interface
```

---

## **VTP (VLAN Trunking Protocol) Basics**

🔹 **What is VTP?**

- A Cisco proprietary protocol that allows VLAN configurations to **propagate across multiple switches** in a network.
- VLANs are configured **on a central switch** (VTP Server), and other switches **sync VLANs automatically**.

🔹 **Why Use VTP?**

- Reduces **manual VLAN configuration** on each switch.
- Ensures **consistent VLAN information** across a large network.

🔹 **VTP Modes**

- **Server Mode:**
    - Can **create, modify, and delete VLANs**.
    - Advertises VLAN changes to **all VTP clients**.
- **Client Mode:**
    - Cannot modify VLANs, only **synchronizes with the VTP server**.
- **Transparent Mode:**
    - Doesn’t sync VLANs but **forwards VTP messages** to other switches.

🔹 **VTP Advertisements**

- Sent via **trunk ports only** (not access ports).
- Uses a **revision number** to determine which VLAN database is the most updated.
- Higher revision numbers **overwrite VLAN configurations** on clients.

🔹 **Dangers of VTP**

- **Old switches with higher revision numbers** can erase VLAN configurations across the network.
- Best practice: **Reset VTP revision number before connecting a new switch**.

🔹 **Key Commands**

```bash
show vtp status  # Check VTP version, mode, domain, revision number
vtp domain <name>  # Set the VTP domain name
vtp mode server  # Configure a switch as a VTP server
vtp mode client  # Configure a switch as a VTP client
vtp mode transparent  # Configure a switch in transparent mode
```

---

## **Best Practices for DTP & VTP**

✅ **Disable DTP (Use `switchport nonegotiate`) to prevent unwanted trunking**.  

✅ **Manually configure trunk and access ports** instead of relying on DTP.  

✅ **Limit VTP usage** in modern networks; **use VTP transparent mode** unless VLAN synchronization is needed.  

✅ **Reset VTP revision number** before adding an old switch to the network.  

✅ **Use manual VLAN assignments** even with VTP (VTP does not assign switchports to VLANs).

---

