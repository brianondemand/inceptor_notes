
BurpSuite is without a doubt one of the most common tools used for web security and bug bounty hunting. In this guide, I will get you up to speed with the fundamentals of how the tool works and can be used, as well as some ideas about how you can take BurpSuite further and use it in more advanced ways.


> Tip: This means that you can also set up your entire operating system to use BurpSuite as a proxy and intercept traffic used by desktop apps that make API requests, or use BurpSuite as a proxy to intercept traffic from IoT devices.

## BurpSuite UI

When you start up BurpSuite you will be able to choose existing Projects and Settings configurations to use if you would like, otherwise you can just make a temporary project and use the default settings.

I will be using requests and responses from one of PortSwigger’s web academy labs for demonstration purposes.

## Dashboard

The first tab that should be open is the **Dashboard** tab, but keep in mind that you can drag these tabs around so the order of your tabs may not match mine. I recommend putting them in an order that fits your workflow.

![](https://miro.medium.com/v2/resize:fit:700/1*o6kQuvyk9zm-_ssOGKsiTQ.png)

The **Tasks** section is where you can keep track of ongoing scans and processes

![](https://miro.medium.com/v2/resize:fit:700/1*1_aSfVxji7260eOQ6ei3GQ.png)

The **Issue activity** section is where you can see the findings from your scans.

Finding confidence is shown by how filled in the circle around the “**!”** is, a tentative finding that may be a false positive will be an outline, while certain findings are filled in completely. Finding severity is shown by color, with the highest severity being red.

![](https://miro.medium.com/v2/resize:fit:700/1*3a2XTi1wwG8RiHFD_DxUdA.png)

The **Advisory** section shows more info about each finding.

The information for each finding will go into detail about the vulnerability, including links for further information. You can also select the tabs at the top of the section to see the request and response that indicated the finding, as well as a path to the issue where applicable like showing where the sources and sinks for prototype pollution show up in the site’s source code.

![](https://miro.medium.com/v2/resize:fit:700/1*vn_SeiLUM7l9csSgxTUw3Q.png)

The event log shows basic activity information about things like scans and other processes.

## Target

The **Target** tag allows you to view the site map of the target site, as well as what requests you’ve made and what findings you have found for each endpoint.

![](https://miro.medium.com/v2/resize:fit:700/1*Gt0W--802CSoPV-9OuOniA.png)

On the left, you have the site map. These are all of the endpoints of the target website, with directories showing as folder icons, files showing as a document icon, and parameterized requests showing as a gear icon.

If a URL in the sitemap is greyed out it may have been mentioned in the site’s responses or found as the result of a scan but has not been visited yet.

![](https://miro.medium.com/v2/resize:fit:700/1*7WtNtP1G5Cm1QDNxox4VRg.png)

The contents section shows the requests you have made to the selected URL. In the lower section, you can view the request and response in detail

![](https://miro.medium.com/v2/resize:fit:700/1*H6tz1H9U9dMMOkxrza5z9Q.png)

The **Inspector** tab here can be clicked on to unfold a section that allows you to view the headers and attributes of the request and response.

![](https://miro.medium.com/v2/resize:fit:700/1*vWB2DcJam8MTjDB9rj3QYQ.png)

If you select some text in the request or response, the inspector also allows you to view the length of the selected text as well as decode the selected text.

![](https://miro.medium.com/v2/resize:fit:700/1*6dMCfG0IB7zy-N_nsF2f_g.png)

The issues and activity section is the same as the one from the dashboard. It allows you to view findings from the selected URL, as well as detailed info about each finding.

![](https://miro.medium.com/v2/resize:fit:700/1*gBs1xjRk886x_xJwhPyhzQ.png)

This filter at the top of the page can be clicked on to open the filter settings. This allows you to filter out results that are out of scope or select what you want to have showing up on your site map.

> Tip: If you are seeing weird behavior where you are sure you’re making a request, but it isn’t showing up in your site map, double-check your filters. It may be that you’re filtering out-of-scope requests or 400 responses.

## Proxy

The **Proxy** tab allows you to modify and send intercepted requests and view your request history.

![](https://miro.medium.com/v2/resize:fit:700/1*Z-M_3xRmP4tSasJR14pVyQ.png)

When you first view this tab you won’t have any intercepted requests. You can use the orange button on this page to open the BurpSuite web browser. It is a Chromium browser that is automatically set up to use BurpSuite for its traffic and it also has an extension that is very useful for DOM-based cross-site scripting attacks.

![](https://miro.medium.com/v2/resize:fit:700/1*HCnTn_ZmsT4pffzfz3_dmg.png)

If you turn intercept on and make a request to the site, like reloading the page, you will see the request get caught here.

You can see the same Inspector on the right that can be used to view and modify the attributes and headers, as well as see the character length and decoding of selected text.

The request in the middle you can edit however you want before pressing **Forward** to send the request to the web server or **Drop** to drop the request and not send it at all. You can also click on the pencil icon above **Forward** to change the host that the request is sent to or select **HTTP/1** in the Inspector to change the request to HTTP/1.

If you press the **Action** button or right-click on the request you intercepted, you will see you have many options for what to do with the request. I’ll give some brief summaries of each section of this menu below:

![](https://miro.medium.com/v2/resize:fit:240/1*RlSp9OSYCZnCRW1In98F-A.png)

Scan opens the scanning configuration GUI so you can start a custom scan, but you can also just select if you want to start an active or passive scan with default settings.

![](https://miro.medium.com/v2/resize:fit:240/1*PXHebsFbMGw-dCc_XlIHEA.png)

Below that, you can send the request to the other tabs in BurpSuite. You can also select **Insert Collaborator Payload** to paste the link to your Collaborator, which we will get to when we discuss that tab. **Request in browser** lets you send the selected request from your browser so that you can view the response there or interact with it further.

![](https://miro.medium.com/v2/resize:fit:447/1*HzRVNBvjJzed-Xv4YX0uNw.png)

The **Extensions** option is how you will use a lot of popular extensions such as HTTP Request Smuggler or Param Miner. These we will discuss further when we get to the **Extensions** tab.

![](https://miro.medium.com/v2/resize:fit:434/1*hQouPQn8-ZgspSKZOeQsZw.png)

The **Engagement tools** option has a series of useful features:

- **Find references** will search all of the BurpSuite tabs for any mention of the selected host/folder/item in any responses. This can be helpful, for example, if you want to search all the responses you have for any links to a certain URL.
- **Discover Content** will crawl the site with a wordlist that will help to find more endpoints. This is definitely one of the more useful features of BurpSuite and will be something you want to familiarize yourself with.
- **Schedule task** can be used to create a task that can happen at specified times or intervals. You can create something like CRON jobs with this, or you can use it for specifically timed request chains for something like testing a complicated authentication process.
- **Generate CSRF PoC** can be used to generate HTML that will cause the selected request to be issued, which is helpful for CSRF attacks.

![](https://miro.medium.com/v2/resize:fit:240/1*KbYfWx1PoDEzkaYV9YTXgg.png)

Below that, you can toggle the request method from GET to POST or switch the encoding of any message body between standard URL-encoded and multipart. **Copy the URL** will grab the host header and append the request target so you get an entire usable URL instead of something like **/users**. **Copy as a curl command** can be used to make the request from your terminal. **Copy to file** saves the request to a file, and you can paste it back to burp with **Paste from file**, and **Save item** saves the request and response as an XML object.

![](https://miro.medium.com/v2/resize:fit:240/1*iHF249Y4AJrB4whjIz1PwQ.png)

**Don’t intercept requests** can be used to avoid intercepting requests to this host, IP address, file extension, or directory. You can also use **Do intercept** to reverse that change.

![](https://miro.medium.com/v2/resize:fit:240/1*k9EeNamYvdbiwjrqA1L0-A.png)

Convert selection allows you to convert selected text to URL, HTML, Base 64, or Base64 URL encodings or construct the string with JavaScript or some SQL types. You can also encode just special characters, which is useful for bypassing filters while still keeping your payload legible.

![](https://miro.medium.com/v2/resize:fit:700/1*T95ZbKfuwBitd3A2b0X1NQ.png)

Selecting the HTTP history tab lets you look through recent requests. This uses the same filter as the **Target** tab which allows you to filter out of scope requests or 400 errors. The WebSockets history allows you to see the same information for WebSockets activity.

![](https://miro.medium.com/v2/resize:fit:700/1*U4ipnmwHjV7rrQKfgrQysw.png)

The **Proxy settings** allow you to customize your proxy listeners, but one especially useful feature in these settings is the interception rules. These allow you to only capture requests or responses that match these rules, with one of the most common uses being to only capture in-scope traffic.

## Repeater

By right-clicking on a request and selecting **Send to Repeater** or doing so with the **Action** button in the proxy interception section, you can send requests to the repeater which allows you to modify and resend requests easily.

![](https://miro.medium.com/v2/resize:fit:700/1*p1rQX0Dg0nd7tKdI9pp2oA.png)

On the left, you have the request, and if you click **Send** you will see the response in the middle. On the right, you have the same Inspector from other tabs which can be used to see information about the request or selected text.

> Tip: You can open more repeater tabs by clicking on the “**+”** above or sending another request to repeater with the right-click menu. You can also duplicate a repeater tab by right-clicking on the request and sending it to repeater again.

![](https://miro.medium.com/v2/resize:fit:700/1*g1RV3flmix886v5Rx1_0NA.png)

Clicking on the gear next to the **Send** button opens up the repeater settings for this repeater tab. By default, repeater automatically updates Content-Length, but for attacks like HTTP Request Smuggling where you need to manually manipulate Content-Length, you can disable updating it here. You can also disable BurpSuite automatically unpacking compressed content from responses.

**Follow redirections** sets the repeater to automatically resubmit requests to the correct location when you receive a redirection, but if you keep this disabled there will be a button to the right of the arrows that allows you to follow the redirection as well. **Process cookies in redirections** resubmits any cookies set in the redirect response when it follows the redirection target.

**Enforce protocol choice on cross-domain redirections** sets repeater to use the protocol selected in the request attributes in the inspector to follow any cross-domain redirects. Normally repeater negotiates protocol automatically.

By default, Burp adds a carriage return **\\r** before any newline characters **\\n**. The carriage return line feeds **\\r\\n** can be manipulated manually by pressing the **\\n** button on the top right of the request/response section. In the cases where you manipulate these manually, you may want to disable **Normalize HTTP/1 line endings** for attacks like HTTP Request Smuggling.

![](https://miro.medium.com/v2/resize:fit:700/1*MUx0G0yIWg0TFLeZx-_npA.png)

> Tip: As you can see above, the **\\n** button on the top right of the request/response section can be used to show the hidden carriage return line feed **\\r\\n** characters at the end of every line. If you select a section of text, you can view the count of characters in the inspector on the right and it **will include** these characters. This is very important for HTTP Request Smuggling attacks where the Content-Length is manipulated

Continuing with the repeater settings, **Enable HTTP/1 connection reuse** and **Enable HTTP/2 connection reuse** reuses the same TCP connection for multiple requests, which increases speed. This is on by default for HTTP/2 connections, but disabled for HTTP/1.

By default, BurpSuite strips the **Connection** header from HTTP/2 requests. The **Connection** header is only used for HTTP/1, so servers are supposed to refuse HTTP/2 requests that use it and treat the request as malformed, though some servers are more lenient. If you want to keep the **Connection** header you can disable **Strip Connection header over HTTP/2**.

**Allow HTTP/2 ALPN override** can be used to test for hidden HTTP/2 support on servers that claim to only accept HTTP/1

![](https://miro.medium.com/v2/resize:fit:700/1*p1rQX0Dg0nd7tKdI9pp2oA.png)

One last thing to remember with the repeater tab is to change the target when you are trying to change the host. Sometimes you want to try the same request on a different host, and it’s important to update the target when you do so.

> Tip: If you want to change from HTTP/1.1 to HTTP/2 you can do that in the **Request attributes** section of the inspector on the right.

## Intruder

Intruder is incredibly useful for automating attacks. For a useful walk-through of how it works, I will use one of the PortSwigger web academy labs as a demonstration.

![](https://miro.medium.com/v2/resize:fit:700/1*t_moIzy4pyfYlt0HmVD5WQ.png)

In this example, I have found an issue on their login page. When I provide a username that doesn’t exist the response (line 53) tells me that I provided an “Incorrect username”. That means I can try to log in with a list of usernames until I get a different response that might be something like “Incorrect password”.

To do this, I right-click on the request and select **Send to Intruder**.

![](https://miro.medium.com/v2/resize:fit:700/1*r634rb0DquVnQbElEFfb4A.png)

In the intruder tab, I can select the type of attack I want to use. Each has a summary of what the attack does. In my case, I want to use a single list of payloads (usernames) in one payload position (the username field), so I will use the **Sniper** attack.

![](https://miro.medium.com/v2/resize:fit:700/1*hK1GiHrPzyjkMZ6es-TqEg.png)

Next, you can select the payload position where you want the payload to end up. In my case I want to use the **username** field, so I will select whatever text is already there and click on the **Add §** button on the right. The “§” character is used by intruder to tell where the payload positions are, so you can also copy and paste the character and place it manually.

After that, we can go over to the **Payloads** tab to select what payloads we want to insert into the selected positions.

![](https://miro.medium.com/v2/resize:fit:700/1*c8eJR0PYoKl641bKzuLTLQ.png)

There is a huge list of payload types you can use based on what type of data you want to populate in the field you have selected for the payload position. You can have iterating numbers, wordlists, brute forcers, and character frobbers which can be used to change one character at a time in an input to see what characters affect behavior.

> Tip: I recommend reading through PortSwigger’s documentation on each of these types, as they provide good examples and using the right type can allow you to automate an attack that you may be doing manually: [https://portswigger.net/burp/documentation/desktop/tools/intruder/configure-attack/payload-types](https://portswigger.net/burp/documentation/desktop/tools/intruder/configure-attack/payload-types)

In my case, I want to use a wordlist of usernames, so I will go with a **Simple list**.

![](https://miro.medium.com/v2/resize:fit:700/1*MoyFV0luVjKnn0l-Z8mO0w.png)

PortSwigger provides a username wordlist to use for the labs so you don’t have to spend a huge amount of time brute forcing, so I will just paste that in the **Payload settings \[Simple list\]**, but you can also load a wordlist file, or add from one of BurpSuite’s provided wordlist files using the **Add from list …** drop-down.

![](https://miro.medium.com/v2/resize:fit:700/1*T_1YzW8ZLg2qu51LZTtb9w.png)

In my case, I won’t need any payload processing. That said, this is definitely one of the areas where BurpSuite shines. You can add complex logic here about how to process the payload which can allow you to carry out very involved attacks.

One good example of this is attacks on JSON web tokens. Say you have a username stored in a JWT that is not properly signed. You can brute force the username with a simple wordlist, but then with each username you can add the rest of the JWT as a prefix and suffix and then Base64 encode the entire JWT before adding it into the request.

![](https://miro.medium.com/v2/resize:fit:700/1*3LNjBFLjXs_tGhP19rSezw.png)

Next, we can use the **Resource pool** tab to set how many concurrent requests we want to send, as well as add delays between requests or throttling when we start to see certain error messages. In my case, I will bring my resource pool down to a single concurrent request to avoid errors, since my wordlist is small.

![](https://miro.medium.com/v2/resize:fit:700/1*Mddq2785BPpUTBCP4AM57Q.png)

The **Settings** tab allows us to add even more complex logic to our attack. For my attack I will use the **Grep — Extract** section of the settings to open up the original response I got and select the “Invalid username” we were seeing before.

By clicking the **Extract the following items from responses:** checkbox, this string will be read from the responses in the table of results after we run the attack, and then I can just sort by rows of the table that don’t include this string to find the valid usernames.

The **Settings** tab also allows you to do the following:

- Retry failed connections
- Flag found strings in the response with Grep-Match (This works like Grep-extract but instead of adding the found string to the table, it adds a 0 or 1 to the table if it is found or missing)
- Flag results that include the used payload. You can use this to search for reflected XSS with a wordlist of payloads
- Follow redirections

![](https://miro.medium.com/v2/resize:fit:700/1*Q-LjrTkJq5CZI0XuXaS6Ag.png)

If we click on the **Start attack** button when we are done with the settings, we will see the results window pop up. As you can see the **Grep — Extract** is pulling the “Invalid username” from the response into another column. If I sort that column you can see that one username had a different response because the username is valid.

![](https://miro.medium.com/v2/resize:fit:700/1*OD8VUuKQPdyNV-0n_Jy1GQ.png)

If I go back to the payload in intruder and put **athena** in the username field and set the **password** field as the payload position, I can add the provided password wordlist as the payload and run the attack again.

As you can see, the **amanda** password did not give us the “Incorrect password” error, so we can try to log in with **athena:amanda** and we successfully log in and solve the lab

## Collaborator

The burp collaborator can be used to detect external service interactions, for example, when a server is connecting to a provided link.

> Tip: Collaborator can also be used to exfiltrate information. If you make a request (or get the server to make a request) to {data}.{collaborator subdomain}.oastify.com you can see the data as subdomain information in the information that is sent to collaborator.

![](https://miro.medium.com/v2/resize:fit:700/1*KvxtSaNEIhE98sVqjKnuvA.png)

You can press the **Copy to clipboard** link to copy the **.oastify.com** link that you can use in your payloads to link to your collaborator. The collaborator server will listen for any DNS or HTTP connections or lookups.

In this example, I have visited the link in my browser. You can see there was a DNS lookup and some HTTP requests (One GET / and two GET /favicon.ico). You can view the description of each of these connections in the bottom section of Collaborator, or you can view the request or response directly.

The results should show up automatically, as you can see by the **Polling automatically** at the top, but you can also click **Poll now** to refresh and check for any activity manually.

## Decoder

The **Decoder** tab can be used to encode, decode, and hash any selected text.

![](https://miro.medium.com/v2/resize:fit:700/1*2IleVOmVTTPYb_mweYzevg.png)

Here is a simple JSON Web Token for an example. I can select the first two sections and decode them as Base64 while leaving the signature as plain text.

![](https://miro.medium.com/v2/resize:fit:700/1*bkKuv_B98DKX-8wdzQonQA.png)

You could also use it to URL encode a payload to bypass filters.

> Keep in mind: The entire selection is URL encoded with this method. If you want to only URL encode key characters, you can type out the payload in any of the request editors in BurpSuite that has an inspector and right-click and then select **Convert selection** > **URL** > **URL encode key characters**

## Sequencer

The **Sequencer** tab is used to analyze the randomness of tokens.

![](https://miro.medium.com/v2/resize:fit:700/1*ApjpvECnqk8eaZMGwkgB7w.png)

You can provide a request and the location in the response where the token appears, or you can select **Manual load** from the top to just directly input the token.

You can run multiple tests for randomness to see if the token is actually something predictable, or if it has been generated with proper randomness.

## Comparer

The **Comparer** tab works similarly to a git diff. You can paste in sets of text, or you can right-click on two requests and select **Send to Comparer**. If you have more than two inputs, you select the two to compare.

![](https://miro.medium.com/v2/resize:fit:700/1*xfl6Ig1aa6xl-fmzpn2-pQ.png)

In this case, I have just pasted in two strings, but you can also load the contents of a file or compare requests or responses.

![](https://miro.medium.com/v2/resize:fit:700/1*PyHWes0yfyoT1lHIN2L07g.png)

If you press the **Words** button in the bottom right you will see this view where changes are highlighted, with modifications, deletions, and additions being different colored highlights.

If you press the **Bytes** button or select the **Hex** checkbox in the top right corner of the word compare section, you can switch to the Hex view. You can also select the **Sync views** checkbox in the bottom right if you have a large file, which will mirror your scrolling and selections between the two text boxes.

## Logger

The logger will show you the history of all of your requests.

![](https://miro.medium.com/v2/resize:fit:700/1*fL4X_enjhew_8454yGqE-g.png)

As you can see, there are two filters at the top. Both are just like the filters in the **Target** and **Proxy** tabs. You can filter what traffic is captured and what traffic is shown in the table, with both being able to filter for things like out-of-scope traffic and 400 errors.

On the right you can select what columns you want to have for the table, and the data is automatically populated based on what you select.

## Organizer

The **Organizer** tab lets you keep track of important requests and take notes during your testing.

![](https://miro.medium.com/v2/resize:fit:700/1*DDzqKeyEbHnIgZ5XhWK63w.png)

If you right-click on a request or scan audit item (found in the **view details** section of a scan) and select **Send to Organizer** it will show up here. You can set the status of the request/audit item, as well as which BurpSuite tool it was sent from.

In the bottom section, you can see the request and the response if the request has been sent, as well as an inspector and notes section on the right. You can take custom notes about the selected request or audit item here.

At the top, there is also another filter section that allows you to filter by things like out-of-scope traffic and 400 errors.

## Extensions

You can use BurpSuite extensions to add additional functionality to the tool. Extensions are usually Java, but some are also Jython so for some you may be required to install that and add it to your path. You can also make your own extensions or use the BurpSuite API to modify the behavior of the app.

![](https://miro.medium.com/v2/resize:fit:700/1*jNkeHEFcg9HI1aL-6Kkt-A.png)

The main page of the **Extensions** tab allows you to view your installed extensions. You can see an estimate of the performance impact of the currently loaded extensions, and you can select which installed extensions you want to have loaded, as well as details about the status of the extension in the lower section.

![](https://miro.medium.com/v2/resize:fit:700/1*WM08zYWxz0sH94pS9PhLIA.png)

If you switch to the **BApp Store** tab at the top you can see the community-made extensions, which are free with the Community edition of BurpSuite unless they say “Pro extension*”* in the **Detail** column on the right.

I highly recommend sorting by descending popularity with the **Popularity column** and reading the descriptions for the top 10 or so extensions and installing them if they fit your workflow. Make sure once you install them you go back to the **Installed** tab and enable them

> Tip: Extensions work in many different ways. Some can be accessed with a tab, just like the tabs for **Repeater** or **Intruder**, others are accessed in the tabs at the very top of the window on Windows or the top of the screen on Mac, along with **File** and **Edit**, and others can only be accessed with right-click. Be sure to read the documentation about the extension for the **Source** link at the bottom of the description.

![](https://miro.medium.com/v2/resize:fit:700/1*E2qFdfQw-IVe_8zTPEf2Xg.png)

The **APIs** tab lets you view all the Burp Extender APIs that can be used to modify BurpSuite.

![](https://miro.medium.com/v2/resize:fit:700/1*lifdNTknHfZt_5QLYhUe5g.png)

The **BChecks** section allows you to write or import custom scan checks, very similar to Nuclei scans, which allow you to have custom scan functionality built into the normal active and passive scans you can do with BurpSuite.

I highly recommend getting familiar with the syntax and making your own scan checks. For more information, the PortSwigger documentation for this is very helpful: [https://portswigger.net/burp/documentation/desktop/automated-scanning/bchecks](https://portswigger.net/burp/documentation/desktop/automated-scanning/bchecks)

## Learn

Finally, for more information, the **Learn** tab has links to PortSwigger resources. This includes guided video tours of the application, as well as the incredible Web Security Academy that PortSwigger hosts.

![](https://miro.medium.com/v2/resize:fit:700/1*QNadPrDsGnqso7CFLQnq2A.png)

The absolute best way to get comfortable with BurpSuite is to work on labs from the Web Security Academy. They are free and vary in required experience level. Once you get comfortable with a handful of topics, you can try the **mystery labs** feature where you start a random lab from a specific topic or random topic and you can challenge yourself to solve it without the context of the lab description.

