---
layout: main
title: Categories
---
<h2>
        {% for category in site.categories %}
        {{ category | first }}{% unless forloop.last %},{% endunless %}
        {% endfor %}
<h2>