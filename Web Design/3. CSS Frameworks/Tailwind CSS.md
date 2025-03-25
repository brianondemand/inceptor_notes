## Introduction to Tailwind CSS

Tailwind CSS is a utility-first CSS framework that provides low-level utility classes for building modern designs without writing custom CSS.

**Why Use Tailwind CSS?**

- **Faster Development:** No need to write custom CSS.
- **Highly Customizable:** Modify designs using utility classes.
- **Responsive & Mobile-First:** Built-in breakpoints for different screen sizes.
- **JIT (Just-in-Time) Mode:** Only includes used styles, reducing file size.

---
## Installing Tailwind CSS in a Project


**Using npm** (Recommended for most projects)

```sh
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
```

This will create a `tailwind.config.js` file for customization.


**Using CDN** (For quick testing)

Add this inside the `<head>` of your HTML file:

```html
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@latest/dist/tailwind.min.css" rel="stylesheet">
```

> ⚠️ The CDN version includes all styles, making it larger in size.

---

 **Configuring Tailwind CSS**

Open `tailwind.config.js` and enable PurgeCSS to remove unused styles:

```js
module.exports = {
  content: ["./src/**/*.{html,js,ts,tsx}"],
  theme: {
    extend: {},
  },
  plugins: [],
}
```

---

## Basic Styling with Tailwind CSS


### Text Styling

|Utility|Effect|
|---|---|
|`text-sm` to `text-6xl`|Font size from small to extra large|
|`font-light` / `font-bold`|Adjust font weight|
|`italic` / `not-italic`|Italics or normal text|
|`text-gray-500`|Text color|
|`underline` / `line-through`|Text decoration|

**Example**

```html
<p class="text-lg font-bold text-gray-800">Tailwind CSS Basics</p>
```

---

### Background & Colors

|Utility|Effect|
|---|---|
|`bg-gray-100` to `bg-gray-900`|Background colors|
|`bg-red-500` / `bg-blue-700`|Other colors|
|`bg-gradient-to-r from-blue-500 to-purple-700`|Gradient background|

**Example**

```html
<div class="p-4 bg-blue-500 text-white rounded-lg">
  Background Example
</div>
```

---

### Borders & Shadows

|Utility|Effect|
|---|---|
|`border`|Default 1px border|
|`border-2 border-gray-500`|Custom thickness and color|
|`rounded-md` / `rounded-lg`|Rounded corners|
|`shadow-sm` to `shadow-2xl`|Box shadow levels|

**Example**

```html
<div class="border-2 border-gray-300 p-4 rounded-lg shadow-lg">
  Card with border and shadow
</div>
```

---

## Layout and Positioning


### Spacing (Margin & Padding)

|Utility|Effect|
|---|---|
|`m-4`|Margin: 16px|
|`p-6`|Padding: 24px|
|`mx-auto`|Center horizontally|
|`px-4 py-2`|Padding: 16px horizontal, 8px vertical|

**Example**

```html
<div class="m-4 p-6 bg-gray-100 rounded-lg">
  Box with margin and padding
</div>
```

---

### Flexbox

|Utility|Effect|
|---|---|
|`flex`|Enables flexbox|
|`flex-row` / `flex-col`|Row or column direction|
|`justify-center`|Center horizontally|
|`items-center`|Center vertically|

**Example - Flexbox Navbar**

```html
<nav class="flex justify-between items-center p-4 bg-gray-800 text-white">
  <div class="text-lg">Brand</div>
  <div class="flex space-x-4">
    <a href="#">Home</a>
    <a href="#">About</a>
    <a href="#">Contact</a>
  </div>
</nav>
```

---

### Grid Layout

|Utility|Effect|
|---|---|
|`grid grid-cols-3`|3-column grid|
|`gap-4`|Spacing between grid items|
|`col-span-2`|Span two columns|

**Example**

```html
<div class="grid grid-cols-3 gap-4">
  <div class="p-4 bg-blue-500">1</div>
  <div class="p-4 bg-green-500">2</div>
  <div class="p-4 bg-red-500">3</div>
</div>
```

---

## Advanced Tailwind Utilities

### Responsive Design

Tailwind uses **breakpoints** for responsive styling:

|Prefix|Screen Size|
|---|---|
|`sm:`|≥ 640px|
|`md:`|≥ 768px|
|`lg:`|≥ 1024px|
|`xl:`|≥ 1280px|

**Example**

```html
<div class="text-lg md:text-2xl lg:text-4xl">
  Responsive Text
</div>
```

---

### Visibility & Display

|Utility|Effect|
|---|---|
|`hidden`|Hide element|
|`block` / `inline-block`|Display types|
|`lg:hidden`|Hide on large screens|

**Example**

```html
<div class="hidden md:block">
  Shown only on medium screens and larger
</div>
```

---

### Positioning

|Utility|Effect|
|---|---|
|`relative`|Position relative|
|`absolute`|Position absolute|
|`fixed`|Position fixed|
|`top-0 left-0`|Position at top-left|

**Example**

```html
<div class="absolute top-0 left-0 p-4 bg-yellow-300">
  Positioned Element
</div>
```

---

## Optimizing Tailwind CSS for Production

### Enable JIT Mode

Modify `tailwind.config.js`:

```js
module.exports = {
  mode: 'jit',
  purge: ["./src/**/*.{html,js,ts,tsx}"],
}
```

---

### Optimize Images

Use `loading="lazy"` for better performance:

```html
<img src="image.webp" loading="lazy" class="w-full">
```

---

### Minify CSS for Production

Run Tailwind's build command:

```sh
npm run build
```

---

