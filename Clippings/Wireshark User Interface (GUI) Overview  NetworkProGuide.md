Wireshark is an incredibly valuable tool for any networking professional. Unfortunately, it’s also an intimidating tool because it throws a lot of options and data at you at once. I’ve created this guide to try and break down the user interface for you and reduce that intimidation factor so you can quickly learn the tool (and become more awesome for it).

Since Wireshark is built for several different platforms using several different window managers, styles, and versions of the GUI toolkit there may be slight variations in your Wireshark’s screen display. Rest assured, primary functionality remains the same so this tutorial should still be easy to understand.

When you first open Wireshark you’ll be presented with the start screen.

There are four primary areas to the start screen, some of which will carry over into the working screen once you pick an interface to work capture traffic from.

![Screenshot of wireshark with arrows pointing to each section of the interface.](https://networkproguide.com/wp-content/uploads/wireshark-start-screen-user-interface-ui.png)

## Primary Areas of the Wireshark Start Screen

1. The Menu
2. The Main Toolbar
3. The Filter Toolbar
4. The Interface List

## “The Menu”

Wireshark’s main menu, “The Menu,” is located at the top of the window when run on Windows and Linux and the top of the screen when run on macOS.

The Menu displays 11 different items:

### File

Open/Merge capture files, save, print, export, and quit Wireshark

### Edit

Find, time reference, or mark a packet. Handle configuration profiles. Set preferences.

### View

Change display of capture data such as colorization of pakcets, showing packet in another window, zooming font, and collapsing and expanding trees.

### Go

Options to go to a specific packet

### Capture

Edit capture filters and start and stop captures.

### Analyze

Alter display filters, configure user specific decodes, enable or disable dissection of protocols, and follow TCP streams

### Statistics

Display statistic windows, summary of captured packets, protocol hierarchy stats, and more

### Telephony

Display telephony relatated stats such as media analysis, flow diagrams, protocol hierarchy stats

### Wireless

Display IEE 802.11 wireless and Bluetooth statistics

### Tools

Various tools such as creating Firewall ACL rules

### Help

View basic help, manuals of command line tools, etc..

## Wireshark Main Toolbar

![Screenshot of the main toolbar in wireshark with details about each icon.](https://networkproguide.com/wp-content/uploads/wireshark-main-toolbar-button-diagram.png)

This is a quick access toolbar providing easy to use buttons for the most common functions of the main menu. Most of these buttons become active only after you’ve selected an interface to monitor.

## Wireshark Filter Toolbar

This toolbar allows you to quickly edit and apply display filters to your capture. Display filters allow you to narrow down the packets that you’ve captured to only those that are relevant to what you’re trying to see such as specific IP address sources and destinations, protocols, MAC addresses, etc…

![Screenshot of the wireshark filter toolbar with descriptions detailing each button and section.](https://networkproguide.com/wp-content/uploads/wireshark-filter-toolbar-button-diagram.png)

![Screenshot of the wireshark interface list showing the important sections of the start screen.](https://networkproguide.com/wp-content/uploads/wireshark-interface-list-diagram.png)

The Interface List is the area where the interfaces that your device has installed will appear. Before you can see packet data you need to pick one of the interfaces by clicking on it. You can choose a capture filter and type of interface to show in the interfaces lists at this screen as well.

Clicking on and interface or opening an existing capture file will take you to the working screen:

![Screenshot of the working screen within Wireshark with arrows pointing to each primary section.](https://networkproguide.com/wp-content/uploads/diagram-wireshark-working-user-interface-ui.png)

## Primary Areas of the Wireshark Working Screen:

1. Title Bar
2. Packet List Pane
3. Intelligent Scrollbar
4. Packet Details Pane
5. Packet Bytes Pane
6. The Statusbar

## Wireshark Title Bar

This bar shows the name of the interface you’re capturing until you save your capture. Then it will show the name of the capture dump file. If you open a saved capture file its’ name will be displayed here.

## Wireshark Packet List Pane

![Screenshot of the wireshark packet list pane illustrating the different elements. ](https://networkproguide.com/wp-content/uploads/wireshark-packet-list-pane-user-interface-ui.png)

Every line in this pane represents one packet. By default, the pane is broken up into 7 columns, each of which provides useful identification data for each packet and can be sorted to help you better dissect the data. You can remove, add, and reorder the columns to suit your needs. Selecting a packet will show more details in the Packet Details Pane and Packet Bytes Pane.

### No.

The No. column assigns a unique number to each packet. It can also display a [symbol](https://www.wireshark.org/docs/wsug_html_chunked/ChUsePacketListPaneSection.html) to help identify the relationship between packets if you click on a packet.

### Time

Displays the timestamp for when the packet was captured. The format of this timestamp is customizable.

### Source

Displays the source IP or MAC address that the packet originated from.

### Destination

Displays the destination IP or MAC address that the packet was heading to.

### Protocol

Displays abbreviated protocol information for the packet.

### Length

Displays the packet length.

### Info

Displays additional information related to the packet.

## Wireshark Intelligent Scrollbar

![Screenshot of the Wireshark Intelligent Scrollbar with an Arrow illustrating the location and colors of the scrollbar.](https://networkproguide.com/wp-content/uploads/wireshark-intelligent-scrollbar-user-interface-ui.png)

To the right of the Packet List Pane is a colored bar called the Intelligent Scrollbar which is a mini-map of packets. Every line of the Intelligent Scrollbar is a raster line that represents a single packet. The number of packets displayed depends on the height of the list and your physical display’s specifications.

This list makes it easy to jump to packets based on colorization. It also makes it easy to spot groups of specific types of packets especially if you utilize custom coloring rules.

## Wireshark Packet Details Pane

![Screenshot of the packet detail pane within Wireshark illustrating the different types of data displayed.](https://networkproguide.com/wp-content/uploads/wireshark-packet-details-pane-user-interface-ui.png)

When you click on a packet in the Packet List Pane it loads data about that packet in the Packet Details Pane. This pane displays the packet’s different protocols and protocol fields. This is list is displayed as a tree that can be expanded to show even more detail.

The details can also include a couple special fields that Wireshark generates on its’ own by analyzing the packets. The two fields are Generated Fields and Links.

### Generated Fields

This information is enclosed in brackets (\[ \]) and contains info such as TCP analysis, response time, checksum validation, and IP geolocation.

### Links

Wireshark will generate a link if it detects relationships between packets. These links will be formatted blue with an underline. Double-clicking on the link will jump you to the related packet.

There is also a context menu which you can access by right clicking within the pane.

## Wireshark Packet Bytes Pane

![Screenshot of the packet bytes pane within Wireshark illustrating the different types of data displayed.](https://networkproguide.com/wp-content/uploads/wireshark-packet-bytes-pane-user-interface-ui.png)

When you click on a packet in the Packet List Pane it loads data about the packet in the Packet Bytes Pane as well. This data is in a hexdump style with each line displaying the data offset, 16 hexadecimal bytes, and 16 ASCII bytes. The periods represent non-printable bytes.

If you mouse over a specific piece of data Wireshark will highlight the corresponding data which you see in the example above in blue where the hex bytes are highlighted along with the associated ASCII bytes.

Occasionally, when Wireshark reassembles some packets into a single chunk or decrypts data, there will be multiple pages tabbed at the bottom of the Packet Bytes Pane.

There is also a context menu which you can access by right clicking within the pane.

## Wireshark Statusbar

![Screenshot of the statusbar at the bottom of Wireshark illustrating the different details shown within the bar.](https://networkproguide.com/wp-content/uploads/wireshark-statusbar-user-interface-ui.png)

The statusbar contains informational messages.

### The Colorized Bullet

At the far left of the statusbar is a colorized bullet which represents the highest Expert Level. When moused over it displays the Expert Infos box.

### The Capture File Properties Button

To the right of the colorized bullet is the capture file properties dialog button.

### The Left Side

In most circumstances the left side will show contextual information about the capture file such as it’s size, name, time elapsed. Hovering over the capture file details will show the path to the file.

### The Middle

The middle will show info related to the current capture file such a the packet counts and load time.

### The Right Side

The right will show the current configuration profile being used.

If you use a display filter that has a problem, it will also be displayed in the Capture File Details field of the statusbar.

Hopefully this Wireshark interface tutorial was easy to understand and has made Wireshark a lot easier for you to understand and work with. I recommend loading up Wireshark, picking an interface on your computer, and just poking around the interface and packets. You’ll be amazed at the type of data you’ll see crossing the wire.

## Recommended Tool: ManageEngine OpManager

[![](https://networkproguide.com/wp-content/uploads/opmss.png)](https://networkproguide.com/view/manageengine-opmanager-ap/)

- Multi-vendor Network Monitoring
- Simple Installation & Setup
- Intuitive UI
- Complete Visibility
- Intelligent Detections
- Easy Resolutions

![Avatar](https://networkproguide.com/wp-content/uploads/Default-Avatar.png)

Network Engineer III

I am a Senior Network Engineer who has spent the last decade elbow deep in enterprise System Administration and Networking in the local government and energy sectors. I can usually be found trying to warm up behind the storage arrays in the datacenter.