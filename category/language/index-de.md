---
layout: category
title: Fremdsprachen
category: language
permalink: category/language/
lang: de
---
{% assign curr_size = site.categories[page.category] | size %}
{% unless curr_size > 0 %}
  {% assign word = page.category %}
  <h3> {% localize no_related_post %} {% localize word %} </h3>
{% endunless %}

<ul class="category-sub-list">
{% for category in site.data.categories %}
  {% if category.title == page.title %}
    {% if category.subcategories != null %}
      {% for subcategory in category.subcategories %}
        <li class="category-sub-list-enclosure">
          <a href="{{site.production_url}}/category{{category.href}}{{subcategory.href}}">
            {% assign word = subcategory.id %}
            {% localize word %}
          </a>
        </li>
      {% endfor %}
    {% endif %}
  {% endif %}
{% endfor %}
</ul>
