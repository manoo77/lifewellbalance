---
layout: page
title: "Physical Wellness"
permalink: /pillar/physical-wellness/
toc: true
---

Welcome to the Physical Wellness pillar.  
Here you’ll find articles focused on movement, sleep, nutrition, and daily habits.

## Articles in Physical Wellness

{% for post in site.posts %}
  {% if post.categories contains "physical-wellness" %}
  - [{{ post.title }}]({{ post.url }})
  {% endif %}
{% endfor %}
