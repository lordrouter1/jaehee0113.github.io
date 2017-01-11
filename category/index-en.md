---
layout: main
title: Categories
navigation_weight: 3
permalink: category/
lang: en
---

<div class="category">
  <ul class="category-list">
    {% for category in site.data.categories %}
    <li class="category-list-enclosure">
      <a class="category-list-link" href="{{site.production_url}}/category{{category.href}}">{{category.title}}{% if forloop.last %}<blink>_</blink>{% endif %}</a>
      {% if category.subcategories != null %}
      <ul class="category-sub-list">
        {% for subcategory in category.subcategories %}
          <li class="category-sub-list-enclosure">
            <a class="category-sub-list-link" href="{{site.production_url}}/category{{category.href}}{{subcategory.href}}">
              {{subcategory.title}}
            </a>
          </li>
        {% endfor %}
      </ul>
      {% endif %}
    </li>
    {% endfor %}
  </ul>
</div>
