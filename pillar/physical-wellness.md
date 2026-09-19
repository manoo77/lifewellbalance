---
layout: page
title: "Physical Wellness"
permalink: /pillar/physical-wellness/
toc: true
---

Welcome to the Physical Wellness pillar.  
Here you’ll find articles focused on movement, sleep, nutrition, and daily habits.

## Articles in Physical Wellness


<ul>
{% for post in site.posts %}
  {% if post.categories contains "physical-wellness" %}
  <li><a href="{{ post.url | relative_url }}">{{ post.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>
