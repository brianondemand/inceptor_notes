You can use Maltego to gather, analyze, and visualize publicly available information, uncovering relationships and patterns between entities like domains, IP addresses, social media profiles, and more.

In this article, we'll show you how to use Maltego, a vital tool for cyber security professionals, particularly penetration testers. We'll begin by explaining what Maltego is and guiding you through the process of starting it up. Next, we'll explore the main interface, breaking down key sections to make them easy to understand.

After that, we'll provide an overview of utilizing Maltego's Transforms, a central feature that enables you to uncover hidden relationships within data sets. Finally, we'll discuss the best practices when using Maltego, ensuring you can utilize this powerful tool effectively and responsibly.

If you’re ready to dive into the world of Maltego, let’s begin.

## What Is Maltego?

[Maltego is a tool](https://www.maltego.com/) that leverages open-source intelligence (OSINT) developed by Paterva. Maltego comes in different versions, including a community edition that can be used for free with some limitations, as well as commercial versions that offer more features and capabilities.

Maltego is a vital tool in the arsenal of a penetration tester. As a graphical link analysis tool, it lets you visualize connections within complex data sets, displaying interconnected links. By analyzing information from various sources such as public websites, email addresses, social media, and cryptocurrency transactions, Maltego aids in uncovering hidden relationships and patterns.

This is particularly useful in penetration testing, where understanding the target's digital footprint and connections can be crucial. Working up to 80% faster with Maltego than traditional methods allows for efficient reconnaissance.

## Starting Up

We will now show you how to get Maltego up and running. For our demo moving forward, we will be using Kali. Maltego can also be installed on Windows, macOS, and other Linux distributions.

Before you can run Maltego, you need to run the installer, which can be found in the Applications menu under “Information Gathering.”

![Maltego in Kali](https://www.stationx.net/wp-content/uploads/2023/09/image-53.png)

You will be taken to a terminal window if you want to install Maltego. Select “Y” to continue.

![Maltego Installation](https://www.stationx.net/wp-content/uploads/2023/09/image-27.png)

You can also install Maltego from the terminal with the following command:

`sudo apt install -y maltego`

![Install Maltego from Terminal](https://www.stationx.net/wp-content/uploads/2023/09/image-39.png)

Now, you can start Maltego by entering `maltego` in the terminal or running it from the application menu.

Once Maltego opens, you will be shown a window asking you to select a product. We are using the “Maltego CE (Free)” version for our demo. Select “Run” to continue.

![Maltego Product Selection](https://www.stationx.net/wp-content/uploads/2023/09/image-40.png)

Next, you’ll need to configure Maltego. The first step is to accept the license agreement and click “Next.”

The next step is to log in so you can use Maltego. If you do not already have an account, [register one here](https://www.maltego.com/ce-registration/?utm_source=maltego-suite&utm_medium=software).

![Configure Maltego](https://www.stationx.net/wp-content/uploads/2023/09/image-52.png)

**Want to Download ALL Our Premium Cheat Sheets?**

No Problem! Just enter your email address, and we’ll send you the PDF versions of all our top cheat sheets.

After logging in, you'll be able to see your details, like your name and email address, as well as the duration of your API key. Click “Next” to continue with the download of the Transforms.

![Maltego Login Result](https://www.stationx.net/wp-content/uploads/2023/09/image-30.png)

The Transforms will be downloaded, and you must click “Next” to install them in Maltego.

![Maltego Install Transforms](https://www.stationx.net/wp-content/uploads/2023/09/image-43.png)

The next screen will ask if you want to send error reports to Paterva, and then click “Next” to continue.

The final window will ask what external browser you want to open links to. Make your choice and then click “Finish” to complete the configuration. Maltego will now be ready to be used.

## Interface

This section will show you the main Maltego graphical user interface, and we will highlight three areas within the interface.

![Maltego Main Interface](https://www.stationx.net/wp-content/uploads/2023/09/image-31.png)

1. **Application Menu**

In the Application menu, you'll find the application button. This grants access to the following functions:

- New Graph
- Open Graph
- Save
- Save All
- Save As

Maltego can open and save graphs using the .mtgl extension. While these are some of the core features, there are also other advanced functions.

1. **Start Page**

The start page showcases the latest updates for products, Transform, and the Transform Hub. Any alerts affecting Maltego's functionality and security can also be found here.

1. **Transform Hub**

The Transform Hub catalogs all the Transforms offered by Maltego, third-party providers, or available through an API/dataset. You can either purchase these items or install them for free.

Transforms in Maltego are specialized pieces of code that process information in a very particular way. They take an Entity (a defined piece of data like an email address, IP address, or name) as input and then search for related information, returning more Entities as output.

Let's walk through installing Transforms in Maltego's Community Edition. First, navigate to the Transform Hub within the software.

Since we're using the Community Edition, you'll want to filter the available Transforms by selecting “Maltego Community” from the “Plans” menu. This will show you only the Transforms compatible with our version, making choosing and installing the ones you need easier.

You’ll also want to display Transforms that are “NOT INSTALLED.”

![Maltego Transform Hub](https://www.stationx.net/wp-content/uploads/2023/09/image-34.png)

Now that we have the Transforms that will work for us let’s choose one to install. At the time of writing, there are 50 Transforms available to you in the Community Edition—everything from infrastructure and network information to searching social media sites.

**Want to Download ALL Our Premium Cheat Sheets?**

No Problem! Just enter your email address, and we’ll send you the PDF versions of all our top cheat sheets.

Let’s install the Censys Transform, designed to map IP addresses to the target domain and vice versa, quickly identify server misconfigurations, and efficiently scan attack surfaces for vulnerabilities

![Maltego Censys Transform](https://www.stationx.net/wp-content/uploads/2023/09/image-32.png)

This Transform is limited to twenty-five Transform runs per month on the Community Edition of Maltego.

Several Transforms will require you to have an API key from the provider, and Censys is one of them.

To work with the Censys Transform, you will need an account and an API key. You can sign up for an account at the [Censys registration page](https://accounts.censys.io/register).

![Maltego Censys Information](https://www.stationx.net/wp-content/uploads/2023/09/image-38.png)

To install, hover over the Censys Transform and click  “INSTALL.” It will ask you if you are sure you want to install it. Click “Yes” to continue.

![Maltego Censys Install](https://www.stationx.net/wp-content/uploads/2023/09/image-35.png)

Complete the three steps that follow to finish installing Censys inside Maltego.

Select “INSTALLED” from the Transform Hub to see the Censys Transform listed.

![See Installed Transforms Maltego](https://www.stationx.net/wp-content/uploads/2023/09/image-47.png)

## Starting an Investigation

The easiest way to start a new investigation is by using Machines in Maltego. These Machines are automated sequences of Transforms in Maltego that allow users to run multiple queries or operations with a single click.

We will demonstrate how to use a Machine in Maltego, specifically focusing on the “Company Stalker” Machine. This Machine aims to locate email addresses associated with a domain, map these to corresponding social media profiles, and finally, attempt to retrieve or analyze any related metadata.

To begin, click on the “Machines” tab at the top of the Maltego window.

![Maltego Machines](https://www.stationx.net/wp-content/uploads/2023/09/image-29.png)

Next, select “Run Machine” to select the Machine you want to run.

![Maltego Run Machines](https://www.stationx.net/wp-content/uploads/2023/09/image-28.png)

Choose “Company Stalker” and click “Next.”

![Maltego Start a Machines](https://www.stationx.net/wp-content/uploads/2023/09/image-33.png)

Now enter a domain you want to use as the target. In our demo, we are using example.net and click “Finish.”

![Maltego Enter Domain Name](https://www.stationx.net/wp-content/uploads/2023/09/image-48.png)

Click through any popups you receive and wait for the machine to finish running. Once finished, you will be presented with any information that was returned.

![Maltego Machine Results](https://www.stationx.net/wp-content/uploads/2023/09/image-41.png)

For a more detailed investigation, you can also run one manually. If you want to start a new project in Maltego, the first step is to select “New”  in the Application menu.  

![Maltego New Graph](https://www.stationx.net/wp-content/uploads/2023/09/image-37.png)

You will then be presented with different screens, such as the “Entity Palette,” “Graph,”  “Output,” and “Run View.”

![Maltego Graph](https://www.stationx.net/wp-content/uploads/2023/09/image-46.png)

To begin your investigation, you will now want to add an “Entity” to the new graph. The easiest way to do this is using the “Entity Pallete” on the main interface's left side. You can either scroll through the list of entities or use the search function.

In Maltego, an Entity represents a single piece of data you want to investigate or analyze. It can be something as simple as an email address, a phone number, a domain name, or an IP address.

![Maltego Entity Palette](https://www.stationx.net/wp-content/uploads/2023/09/image-51.png)

Let's add an Entity to the graph. In the “Personal” section, you can select the “Email Address” Entity or simply use the search bar to find “Email.” Once you locate the Entity, drag it onto the graph to add it.

![Maltego Add Email Address](https://www.stationx.net/wp-content/uploads/2023/09/image-49.png)

**Want to Download ALL Our Premium Cheat Sheets?**

No Problem! Just enter your email address, and we’ll send you the PDF versions of all our top cheat sheets.

## Working With Transforms

Now, we will show you how to work with different Transforms. For this demo, we will be using a domain name to perform various analyzes.

Search for “Domain” in the Entity Palette and drag it to the Graph. We will use nmap.scanme.org for the demo, so change the domain name from maltego.com to nmap.scanme.org.

![Maltego Add Domain](https://www.stationx.net/wp-content/uploads/2023/09/image-42.png)

Let’s run our first Transform. Let’s run Censys to map an IP to the domain name. Right-click on the domain in the graph and select Censys. Then click the “Run All” button to run all the Censys Transforms simultaneously.

As a penetration tester, this information gathering technique during the information gathering phase can give insight into the organization's network structure and may reveal the relationships between different servers, such as mail servers and websites.

![Maltego Run Censys Transform](https://www.stationx.net/wp-content/uploads/2023/09/image-44.png)

The Transform will run and present you with the IP information in the graph.

![Maltego After Transform](https://www.stationx.net/wp-content/uploads/2023/09/image-45.png)

Now let’s run another Transform. This time let’s run the “To Snapshots between Dates \[Wayback Machine\].” This can be extremely helpful when performing a penetration test as it could reveal important information such as past vulnerabilities, changes in security configurations, deprecated or hidden pages, and subdomains.

Right-click on the domain, and in the search bar, search for “wayback” then select “To Snapshots between Dates \[Wayback Machine\],” and finally click run.

![Maltego Run To Snapshots](https://www.stationx.net/wp-content/uploads/2023/09/image-50.png)

On the next screen, choose the begin and end dates for the search and click Run!

![Maltego Enter Dates for To Snapshots](https://www.stationx.net/wp-content/uploads/2023/09/image-49.png)

Once the Transform completes, you will be shown the Wayback Machine data found. With this information, you could click on a specific date and open the URL for further information gathering and investigations.

![Maltego To Snaphots Results](https://www.stationx.net/wp-content/uploads/2023/09/image-36.png)

Maltego is an extremely powerful tool and can do so much more than what we’ve shown you here. Using Maltego, you could map out the digital footprint of a target organization, including identifying key employees, emails, social media profiles, or devices.

This information can be used with tools like the [Social Engineer Toolkit](https://www.stationx.net/social-engineer-toolkit/) for information gathering. It can be used to create:

**Phishing Campaigns:** Information gathered about email addresses and social connections could aid in crafting [targeted phishing emails](https://www.stationx.net/phishing-statistics/).

**Spear Phishing and Social Engineering Attacks:** Insights into the relationships between entities might inform more advanced spear-phishing or [social engineering attacks](https://www.stationx.net/social-engineering-example-2/).

## Best Practices

Let's talk about some Maltego usage best practices. Maltego is a very versatile tool that can do many things, and there are some things you can do to work more effectively and intelligently before and while using it. Our list of recommendations for working with Maltego is provided below.

- **Create a Strong Workflow:** Understand your goal before you start. Map out what you want to uncover and tailor your search accordingly.
- **Use Transforms Wisely:** Transforms are queries that fetch you different data types. Learn them well, and use only what's necessary. Too many unnecessary Transforms may clutter your results.
- **Secure Your Data:** Maltego can pull sensitive information. Make sure you handle it with care.
- **Stay Up to Date:** The digital world and tools like Maltego change rapidly. Regularly update to the latest version to keep up with new features and security enhancements.
- **Use Entities Properly:** Entities are the building blocks in Maltego. Use them correctly to represent the data you're working with.
- **Use Notes and Bookmarks:** You can attach notes to entities, connections and bookmark essential elements. This helps track why something is important or how you discovered it.
- **Export and Share with Care:** You can export your findings to share with others. But remember, this might include sensitive data, so only share it with those who need it.

## Conclusion

As you can see, Maltego is a powerful tool used in penetration testing and other investigations. It provides a graphical representation of your data and enables clear visualization of complex relationships and connections, and aids in the thinking process.

In this article, we began by explaining Maltego and guiding you through its installation process. Next, we demonstrated how to get Maltego up and running, and we introduced you to the main interface. Following that, we dove into initiating an investigation and working with Transforms. Finally, we outlined some best practices to follow when using Maltego.

We've just scratched the surface of what Maltego can do, but you should now understand how to use this tool effectively.

## Frequently Asked Questions

**Is Maltego free?**

Maltego can be used for free with its Community Edition and includes some of the same functions as the Pro and Enterprise versions but has limitations such as only having up to 12 results per Transform and 10,000 Entities per graph and not having access to the commercial Transform Hub.

**Is it legal to use Maltego?**

It is legal to use Maltego, as the tool gathers its information from public and open sources. However, the legality depends on what you are using it for. If you are using Maltego for information gathering and research, then it would generally be considered legal. On the other hand, it may be considered illegal if it's being used for illegal activities.

**Why do hackers use Maltego?**

Some hackers may want to use Maltego because it can gather information about individuals and businesses, which could be used to conduct social engineering attacks by exploiting human vulnerabilities to gain unauthorized access.

