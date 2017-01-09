---
layout: main
title: Search
navigation_weight: 3
permalink: search/
lang: ko
---

<div class="container-search-inner">
  <form class="container-search-inner-form" id="search-form" action="/search/" method="get">
    <div class="container-search-inner-form-input">
      <input class="container-search-inner-form-box" type="text" id="search-box" name="query">
    </div>
    <div class="container-search-inner-form-submit">
      <input class="container-search-inner-form-submit-button" type="submit" value="Go">
    </div>
  </form>
</div>

<ul class="post-list" id="search-results"></ul>
<div class="pagination"></div>

<script>
  window.store = {
    {% for post in site.posts %}
      "{{ post.url | slugify }}": {
        "title": "{{ post.title | xml_escape }}",
        "author": "{{ post.author | xml_escape }}",
        "category": "{{ post.categories[0] | xml_escape }}",
        "date": "{{post.date | date_to_long_string}}",
        "content": {{ post.content | strip_html | strip_newlines | jsonify }},
        "url": "{{ post.url | xml_escape }}"
      }
      {% unless forloop.last %},{% endunless %}
    {% endfor %}
  };
</script>
<script src="../assets/js/lunr.min.js"></script>
<script src="../assets/js/search.js"></script>
