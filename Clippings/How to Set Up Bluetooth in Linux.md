With the increasing prevalence of Bluetooth peripherals such as mice, keyboards, and headsets, it can be difficult to imagine using the wired versions of these devices sometimes. On some Linux distributions, Bluetooth is set up perfectly for you straight out of the box. Distributions like Ubuntu and Elementary make it easy for you to get Bluetooth set up and working on your machine. However, other distributions like Fedora and Arch Linux require you to do some setup before you’re able to fully enjoy the benefits of Bluetooth on your machine. Here is how you can set up Bluetooth in Linux.

## How to Set Up Bluetooth on Your Linux Machine

The steps will vary a little across distributions, but the basic steps are the same. If your distribution doesn’t already have Bluetooth set up for you, you will first need to install `Bluez`, which contains the driver stack for Bluetooth adapters as well as utilities for the CLI administration of Bluetooth.

After installing `Bluez`, you may need to install a Bluetooth manager. Some desktop environments have built-in Bluetooth managers. For example, [KDE Plasma](https://www.maketecheasier.com/kde-plasma-review/) has the KDE Bluetooth client. Gnome also has a built-in client. If you are using a desktop environment that doesn’t have a built-in client, you can install the `Blueman` client.

## How to Install Bluez

Below are instructions on how to install Bluez on a few different distributions.

**Debian and Ubuntu**

```
sudo apt install bluez*
```

**Fedora**

```
sudo dnf install bluez bluez-tools
```

**Arch Linux**

```
sudo pacman -S bluez bluez-utils
```

![Set Up Bluetooth Linux 01 Install Bluez](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-01-install-bluez.png)

**Other Package Managers**

Bluez works with all Linux distributions. If you have a different package manager than the distributions above, have no fear. You will just need to search for bluez in your package manager, then install everything that includes the term bluez.

## How to Install Blueman

Find out how to install Blueman on various Linux distributions below.

**Debian** **and Ubuntu**

```
sudo apt install blueman
```

**OpenSUSE**

```
sudo zypper install blueman
```

**Fedora**

```
sudo dnf install blueman
```

**Arch Linux**

```
sudo pacman -S blueman
```

**Other Distributions**

To install Blueman on your Linux distributions, you should search the package manager in the distribution being used for Blueman, then install all of the relevant packages.

## Enable Bluetooth

After installation, you will need to activate and start the Bluetooth service. If you are using a Bluetooth dongle, you will first have to run the following command:

```
sudo modprobe btusb
```

To enable the Bluetooth service, run the following command:

```
sudo systemctl enable bluetooth.service
```

To start the Bluetooth service, use this command:

```
sudo systemctl start bluetooth.service
```

![Set Up Bluetooth Linux 02 Enable Bluetooth Service](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-02-enable-bluetooth-service.png)

After doing this, you’ll be able to start using Bluetooth on your system.

## Connect to Devices Using Blueman

The connection process will vary depending on the [desktop manager](https://www.maketecheasier.com/best-desktop-environments/) you’re using. However, we show how it’s done using Blueman since it’s fairly representative of the process across the board.

To connect to a device, open “Bluetooth Manager” in your applications and hit search. Make sure that the device you want to connect to is discoverable. When you see it in the device list, right-click on it and hit “Connect.” You may have to enter a passcode, but this information will be in the user’s manual of your device.

![Set Up Bluetooth Linux 03 Blueman Utility](https://www.maketecheasier.com/assets/uploads/2022/08/set-up-bluetooth-linux-03-blueman-utility.png)

## Set up Bluetooth Devices in GNOME Linux

Gnome comes with Bluetooth support from the start, and you can easily set up Bluetooth devices without installing any other tools.

![Set Up Bluetooth Linux 04 Gnome Desktop Ubuntu](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-04-gnome-desktop-ubuntu.jpg)

1. Click on the status icons on the top-right corner of your screen. Doing this will bring up a small menu where you can choose how your machine connects to the network.

![Set Up Bluetooth Linux 05 Gnome Bluetooth Menu](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-05-gnome-bluetooth-menu.png)

2. Click on the “Bluetooth” entry to bring up a drop-down menu where you can choose to toggle Bluetooth or access the appropriate settings for it. Choose to access the Settings.

![Set Up Bluetooth Linux 06 Select Bluetooth Settings](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-06-select-bluetooth-settings.png)

3. The Bluetooth Settings window will display all the devices that you can connect to. In this example, I can select my phone to pair it with my machine.

![Set Up Bluetooth Linux 07 One Pairable Device](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-07-one-pairable-device.png)

4. GNOME will display a window showing a six-digit PIN that you need to match with your device to ensure that you are pairing the right devices together.

![Set Up Bluetooth Linux 08 Pairing Code](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-08-pairing-code.png)

One important thing to note, however, is that the six-digit PIN will only show up on non-peripheral devices, as GNOME will automatically pair with any Bluetooth keyboard and headphones.

![Set Up Bluetooth Linux 09 Device Connected Gnome](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-09-device-connected-gnome.png)

**Also read:** [How to Build a New PC For Linux](https://www.maketecheasier.com/build-new-pc-for-linux/ "How to Build a New PC For Linux")

## Connect to Bluetooth Devices in KDE Plasma

It is also possible to set up Bluetooth out of the box through the Plasma desktop in Linux.

![Set Up Bluetooth Linux 10 Kde Desktop](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-10-kde-desktop.jpg)

1. Click the Bluetooth icon in the lower-left corner of your screen to bring up a small menu where you can configure how Bluetooth works in your machine.

![Set Up Bluetooth Linux 11 Kde Bluetooth Menu](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-11-kde-bluetooth-menu.png)

2. Click the “+ Add New Device…” button in the middle of the window.

![Set Up Bluetooth Linux 12 Kde Add New Device](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-12-kde-add-new-device.png)

3. Plasma will start its Bluetooth discovery program and search for every active nearby device and will list all found devices in a small window.

![Set Up Bluetooth Linux 13 Select Bluetooth Phone](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-13-select-bluetooth-phone.png)

4. Select your device and press “Next” to start the Bluetooth pairing process. Plasma will display a small window with a six-digit PIN that you need to match with your device.

![Set Up Bluetooth Linux 14 Kde Pairing Code](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-14-kde-pairing-code.png)

![Set Up Bluetooth Linux 15 Kde Paired Device](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-15-kde-paired-device.png)

## Set Up the Bluetooth CLI Utility in Linux

It is also possible to connect a device through a dedicated Bluetooth CLI utility, a program that comes with Bluez that allows you to pair and control devices straight from your command line. It can be especially useful for devices that do not have a display, such as [Raspberry Pi](https://www.maketecheasier.com/program-arduino-with-raspberry-pi/).

![Set Up Bluetooth Linux 16 Sample Terminal Screen](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-16-sample-terminal-screen.png)

1. Run the `bluetoothctl` program to load the Bluez CLI utility. This will change your prompt to `[bluetooth]#`.

![Set Up Bluetooth Linux 17 Bluetoothctl Loaded](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-17-bluetoothctl-loaded.png)

2. Start the internal Bluetooth transmitter by powering it on:

3. Tell the transmitter to scan for any active Bluetooth device in the area by running these two commands:

4. Look for the device you want to pair with your computer by telling the transmitter to list all the devices that it detected during the scan:

![Set Up Bluetooth Linux 18 Bluetoothctl List Devices](https://www.maketecheasier.com/assets/uploads/2022/07/set-up-bluetooth-linux-18-bluetoothctl-list-devices.png)

5. Use the MAC address of your device to pair it with your computer by running these two commands:

```
pair [MAC address]
connect [MAC address]
```

One important thing to note, however, is that unlike the methods described above you need to type the PIN displayed on the device.


