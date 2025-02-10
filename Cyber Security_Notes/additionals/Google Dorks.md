## What is google hacking/dork?

Google hacking, also known as google dorking, it is basically a search string with that uses advanced search query to find information that are not easily available on the websites.

## Why we need google hacking/dork?

Let's take a look at some practical example, Suppose if the price of some eBook is too high & someone uploaded it as a backup to their own Dropbox or Google Drive account or anywhere on the internet as far as Google Search Engine can crawl through it, then we can access it.

## Important things to know

Before starting with Google Dork, one needs to be aware that Google knows who you are and when you perform these kinds of activities. Only use these information for legal purposes. Just because the information are open on the internet, do not use it to harm others. Any illegal activity caught on the internet, you will be charged as cyber criminal. This article highly influences you to use the information with good intentions.

## Popular Google Dork Operates

### Logical operators and symbols in Google Dork

these operators and symbols help refine the search query. Each have a special meaning of their own and at times can help create complex queries when combined with advance search operators.

| Logical Operators | Description | Examples |
| --- | --- | --- |
| **AND** or + | Used to include keywords. All the keywords need to be found | 1\. web **AND** application **AND** security.   2\. web + application + security |
| **NOT** or - | Used to exclude keywords. All the keywords need to be found | 1\. web application **NOT** security   2\. web application -security |
| **OR** or \| | Used to include keywords where either one keyword or another is matched. All the keyword need to be found. | 1\. web application **OR** security   2\. web application \| security |
| **Tilde(~)** | Used to include synonyms and similar words. | web application ~security |
| **Double quote(")** | Used to include exact words. | "web application security" |
| **Period(.)** | Used to include single-character wildcards. | .eb application security |
| **Asterisk(\*)** | Used to include multi-character wildcards. | web \* security |
| **Paranthesis(())** | Used to group keywords. | (“web security” \| websecurity) |

### Advanced search operators

The advanced Google operators assist the user in refining search results further. The syntax of advanced operators is as follows.

```bash
operator:search_string_text
```

The syntax consists of three parts, the operator, the colon (:) and the desired keyword to be searched. Spaces may be inserted by using double quotes (“).

Google search identifies the above pattern and restricts the search using the information provided. For instance, using the previously mentioned search query, intitle:"index of" filetype:sql, Google will search for the string index of in the title (this is the default title used by Apache HTTP Server for directory listings) of a website and will restrict the search to SQL files that have been indexed by Google.

The table below lists some advanced operators that can be used to find vulnerable websites. For more search operators see Google’s Advanced Search page.

| Advance Operators | Description | Examples |
| --- | --- | --- |
| **site:** | Used to restrict the search to a specific domain. | site:example.com |
| **filetype:** | Limit the search to text found in a specific file type. | filetype:pdf |
| **intitle:** | Search for a string text within the title of a page. | intitle:index of |
| **inurl:** | Search for a string within a URL | inurl:passwords.txt |
| **cache:** | Search and display a version of a web page as it was shown when Google crawled it. | cache:example.com |
| **link:** | Search for pages that link to the requested URL. | link:[www.example.com](http://www.example.com/) |