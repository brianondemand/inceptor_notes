HTML events are **"things"** that happen to HTML elements.

When JavaScript is used in HTML pages, JavaScript can **"react"** on these events.

### HTML Events

An HTML event can be something the browser does, or something a user does.

Here are some examples of HTML events:

- An HTML web page has finished loading
- An HTML input field was changed
- An HTML button was clicked

Often, when events happen, you may want to do something.

JavaScript lets you execute code when events are detected.

HTML allows event handler attributes, **with JavaScript code**, to be added to HTML elements.

#### Common HTML Events

Here is a list of some common HTML events:

|Event|Description|
|---|---|
|onchange|An HTML element has been changed|
|onclick|The user clicks an HTML element|
|onmouseover|The user moves the mouse over an HTML element|
|onmouseout|The user moves the mouse away from an HTML element|
|onkeydown|The user pushes a keyboard key|
|onload|The browser has finished loading the page|

### Event Handlers

**Event Handlers** are JavaScript methods, i.e. functions of objects, that allow us as JavaScript programmers to control what happens when events occur.

Directly or indirectly, an **Event** is always the result of something a user does. For example, we've already seen Event Handlers like `onClick` and `onMouseOver` that respond to mouse actions. 

Another type of Event, an internal change-of-state to the page (completion of loading or leaving the page). An `onLoad` Event can be considered an indirect result of a user action.

The elements on a page which can trigger events are known as **"targets"** or **"target elements,"** and we can easily understand how a button which triggers a Click event is a target element for this event. 

Typically, events are defined through the use of Event Handlers, which are bits of script that tell the browser what to do when a particular event occurs at a particular target. These Event Handlers are commonly written as attributes of the target element's HTML tag.

**Example:**

The Event Handler for a Click event at a form field button element is quite simple to understand:

```html
<input type="button" name="click1" value="Click me" onClick="event_handler">
```

The `event_handler` portion of this example is any valid JavaScript and it will be executed when the specified event is triggered at this target element.

Event handlers can be used to handle and verify user input, user actions, and browser actions:

- Things that should be done every time a page loads
- Things that should be done when the page is closed
- Action that should be performed when a user clicks a button
- Content that should be verified when a user inputs data
- And more.

Many different methods can be used to let JavaScript work with events:

- HTML event attributes can execute JavaScript code directly
- HTML event attributes can call JavaScript functions
- You can assign your own event handler functions to HTML elements
- You can prevent events from being sent or being handled
- And more.
  
There are "three different ways" that Event Handlers can be used to trigger Events or Functions.


#### Method 1 (Link Events):

```html
<a href="javascript:alert('Ooo, do it again!')" >Click on me!</a>
```

#### Method 2 (Actions within FORMs):

```html
<form> <input TYPE="button" onClick="doSomething()"> </form>
```

#### Method 3 (BODY onLoad & onUnLoad):

The `onunload` event occurs once a page has unloaded (or the browser window has been closed).

The `onload` event fires when the entire page (including all dependent resources like stylesheets, images, and scripts) has been loaded completely.

Since `onunload` has limited support, use `onbeforeunload` if you need to warn users before they leave the page.

#### Example of `onload`

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Onload Example</title>
    <script>
        window.onload = function () {
            alert("Page has fully loaded!");
        };
    </script>
</head>
<body>
    <h1>Welcome to My Page</h1>
</body>
</html>

```

- In this example, an alert box appears once the page fully loads.
  
#### Example of `onunload`

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Onunload Example</title>
    <script>
        window.onunload = function () {
            console.log("User is leaving the page.");
        };
    </script>
</head>
<body>
    <h1>Try closing or refreshing the page</h1>
</body>
</html>

```

- This example logs a message when the user leaves the page.

#### ✅ Example of `onbeforeunload`

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Onbeforeunload Example</title>
    <script>
        window.onbeforeunload = function () {
            return "Are you sure you want to leave?";
        };
    </script>
</head>
<body>
    <h1>Try closing or refreshing the page</h1>
</body>
</html>

```

- This prompts the user with a confirmation message before leaving the page.
  
---

|**EVENT**|**DESCRIPTION**|
|---|---|
|`onAbort`|The user cancels loading of an image|
|`onBlur`|Input focus is removed from a form element (when the user clicks outside the field) or focus is removed from a window|
|`onClick`|The user clicks on a link or form element|
|`onChange`|The value of a form field is changed by the user|
|`onError`|An error happens during loading of a document or image|
|`onFocus`|Input focus is given to a form element or a window|
|`onLoad`|Once a page is loaded, NOT while loading|
|`onMouseOut`|The user moves the pointer off of a link or clickable area of an image map|
|`onMouseOver`|The user moves the pointer over a hypertext link|
|`onReset`|The user clears a form using the Reset button|
|`onSelect`|The user selects a form element’s field|
|`onSubmit`|A form is submitted (i.e., when the user clicks on a submit button)|
|`onUnload`|The user leaves a page|

##### Which Event Handlers Can Be Used

|**OBJECT**|**EVENT HANDLERS AVAILABLE**|
|---|---|
|Button element|`onClick`, `onMouseOver`|
|Checkbox|`onClick`|
|Clickable ImageMap area|`onClick`, `onMouseOver`, `onMouseOut`|
|Document|`onLoad`, `onUnload`, `onError`|
|Form|`onSubmit`, `onReset`|
|Framesets|`onBlur`, `onFocus`|
|Hypertext link|`onClick`, `onMouseOver`, `onMouseOut`|
|Image|`onLoad`, `onError`, `onAbort`|

