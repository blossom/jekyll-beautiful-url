# Jekyll-beautiful-url

This plugin overwrites the posts.url variable.

For posts and pages the `.html` is removed. Additionally for pages permalinks containing index.html files get repaced as well. For example `some/directory/index.html` converts to `some/directory`.

# Config

It is possible to deactivate beautiful urls for either pages or posts. By default both are active.

Example:

    beautiful_url:
      pages: false
      posts: true