---
layout: archive
title: "Categories"
permalink: /categories/
author_profile: false
---


{% assign categories = site.categories | sort %}
{% for category in categories %}
  {% assign category_slug = category[0] %}
  {% assign category_name = category_slug | replace: "-", " " | capitalize %}
  <h2 id="{{ category_slug | slugify }}">{{ category_name }}</h2>
  <ul>
    {% for post in category[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}