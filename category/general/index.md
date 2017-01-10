---
layout: category
title: General
category: general
---
{% assign curr_size = site.categories[page.category] | size %}
{% unless curr_size > 0 %}
  <h3> No posts related to {{page.category}} </h3>
{% endunless %}

{% if curr_size > 0 %}
<ul class="post-list">
    {% assign posts = site.categories[page.category] | sort:"date" | reverse %}
    {% for post in posts %}
    <li class="post-list-enclosure-2pr">
      <div class="card-details">
        <div class="card-details-header">
          <span class="card-details-header-title">{{post.title}}</span>
        </div>
        <div class="card-details-readmore">
          <a href="{{post.url}}"> More > </a>
        </div>
      </div>
    </li>
    {% endfor %}
</ul>
{% endif %}
