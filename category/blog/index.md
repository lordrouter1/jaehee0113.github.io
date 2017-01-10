---
layout: category
title: Blog
category: blog
---
<ul class="category-sub-list">
{% for category in site.data.categories %}
  {% if category.title == page.title %}
    {% if category.subcategories != null %}
      {% for subcategory in category.subcategories %}
        <li class="category-sub-list-enclosure">
          <a href="{{site.production_url}}/category{{category.href}}{{subcategory.href}}">
            {{subcategory.title}}
          </a>
        </li>
      {% endfor %}
    {% endif %}
  {% endif %}
{% endfor %}
</ul>
