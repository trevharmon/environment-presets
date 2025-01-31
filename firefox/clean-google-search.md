# Getting Back to a Clean Google Search

Over the years, Google has continued to add more and more to the search results
page — most recently the addition of AI overviews, halucinations and all. This
outlines the process of making this not the default behavior.

This is done by creating and then using a custom search engine as the default
for web searches in the web browser.

## Enabling Custom Search Engines

Firefox doesn't allow the addition of custom search engines by default. This
needs to be enabled using the following process:

1. Open Firefox.
1. Type `about:config` into the URL bar.
1. Add the new preference `browser.urlbar.update2.engineAliasRefresh` as a
   boolean.
1. The prefence should default to a `true` value. Validate and change if
   necessary.

## Adding the Custom Search Engine

1. Open Firefox's _Settings_.
1. Select _Privacy & Security_.
1. Under _Search Shortcuts_ click the `Add` button.
1. Fill out the options per the table below.
1. Click the `Add Engine` button.
1. At the top of the page, change the dropdown under _Default Search Engine_ to
   your newly created custom search engine.

| ------------------ | --------------------------------------- |
| Search engine name | _Give it a descriptive name._           |
| Engine URL         | `https://google.com/search?udm=14&q=%s` |
| Alias              | _Give it a recognizable alias._         |
