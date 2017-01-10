---
layout: main
title: Kategorien
navigation_weight: 3
permalink: category/
lang: de
---
<!-- Initial Model (without considering subcategories)
<ul class="category-list">
  {% for category in site.categories %}
  {% assign category_name = category | first %}
  <li class="category-list-enclosure">
    <div class="category-list-enclosure-title">{{category_name}}</div>
    <ul class="category-post-list">
    {% assign category_posts = site.categories[category_name] | sort:"date" | reverse %}
    {% for post in category_posts limit:1 %}
      <li class="category-post-list-enclosure">
        {{post.title}}
      </li>
    {% endfor %}
    </ul>
  </li>
  {% endfor %}
</ul>
-->
<!-- future model (data-driven menu for category as subcategory does not really exist in Jekyll) -->
<ul class="category-list">
  {% for category in site.data.categories %}
  <li class="category-list-enclosure">
    <a href="{{site.production_url}}/category{{category.href}}">{{category.title}}</a>
    {% if category.subcategories != null %}
    <ul class="category-sub-list">
      {% for subcategory in category.subcategories %}
        <li class="category-sub-list-enclosure">
          <a href="{{site.production_url}}/category{{category.href}}{{subcategory.href}}">
            {{subcategory.title}}
          </a>
        </li>
      {% endfor %}
    </ul>
    {% endif %}
  </li>
  {% endfor %}
</ul>
