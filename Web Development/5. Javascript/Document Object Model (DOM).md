
The Document Object Model (DOM) is how JavaScript interacts with HTML elements. Think of it as a "bridge" that connects your JavaScript code to the elements on your webpage.

The DOM represents your HTML page as a tree of objects that JavaScript can manipulate. When your browser loads a webpage, it creates this DOM tree automatically.

## How to Access Elements

Finding elements is your first step:

```javascript
// Finding by ID (finds a single element)
let title = document.getElementById("main-title");

// Finding by class name (finds multiple elements)
let buttons = document.getElementsByClassName("btn");

// Finding by tag name (finds multiple elements)
let paragraphs = document.getElementsByTagName("p");

// Using CSS selectors (modern and flexible)
let firstButton = document.querySelector(".btn"); // First matching element
let allButtons = document.querySelectorAll(".btn"); // All matching elements
```

## Changing Content

Once you've found an element, you can change what's inside:

```javascript
// Change the text
document.getElementById("greeting").textContent = "Hello there!";

// Change the HTML
document.getElementById("info-box").innerHTML = "<strong>Important message</strong>";
```

## Changing Styles

You can also change how elements look:

```javascript
let element = document.getElementById("my-element");

// Change specific styles
element.style.color = "blue";
element.style.fontSize = "20px";
element.style.backgroundColor = "yellow";

// Add or remove classes
element.classList.add("highlight");
element.classList.remove("hidden");
element.classList.toggle("active"); // Add if absent, remove if present
```

## Creating New Elements

You can add brand new elements to your page:

```javascript
// Create a new element
let newParagraph = document.createElement("p");

// Add content to it
newParagraph.textContent = "This is a new paragraph!";

// Add it to the page (at the end of body)
document.body.appendChild(newParagraph);

// Or add it inside another element
let container = document.getElementById("container");
container.appendChild(newParagraph);
```

## Responding to Events

Make your page interactive by responding to user actions:

```javascript
let button = document.getElementById("my-button");

// When the button is clicked
button.addEventListener("click", function() {
  alert("Button was clicked!");
});

// Other common events:
// - "mouseover" - when mouse moves over an element
// - "mouseout" - when mouse leaves an element
// - "keydown" - when a key is pressed
// - "submit" - when a form is submitted
```


## Common Patterns

Here are some things you'll do often:

1. **Find element → Change element**: First select an element, then modify it
2. **Listen for event → Do something**: React to user actions
3. **Create element → Add content → Add to page**: Build new page elements

## DOM Navigation

Sometimes you need to move around the DOM tree:

```javascript
let element = document.getElementById("middle");

// Moving up (to parent)
let parent = element.parentElement;

// Moving sideways (to siblings)
let nextSibling = element.nextElementSibling;
let previousSibling = element.previousElementSibling;

// Moving down (to children)
let children = element.children; // All child elements
let firstChild = element.firstElementChild;
let lastChild = element.lastElementChild;
```

