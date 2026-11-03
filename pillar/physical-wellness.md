---
layout: page
title: "Physical Wellness"
permalink: /pillar/physical-wellness/
pillar_slug: physical-wellness
order: 1
description: "Movement, sleep, nutrition, and daily habits — the foundations of an active, comfortable life."
toc: false
---

Welcome to Physical Wellness. Here you'll find guidance on joint health, blood sugar balance, and reducing inflammation — the foundations of an active, comfortable, energetic life.

## Explore Topics

{% assign sub_pillars = site.pages | where: "parent_pillar", page.pillar_slug | sort: "order" %}
{% if sub_pillars.size > 0 %}
<div class="sub-pillar-grid">
  {% for sub in sub_pillars %}
  <a href="{{ sub.url | relative_url }}" class="sub-pillar-card">
    <h3>{{ sub.title }}</h3>
    {% if sub.description %}<p>{{ sub.description }}</p>{% endif %}
  </a>
  {% endfor %}
</div>
{% endif %}

## All Articles in Physical Wellness

<ul class="posts-list">
{% for post in site.posts %}
  {% if post.categories contains page.pillar_slug %}
  <li>
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    <span class="post-date">{{ post.date | date: "%b %-d, %Y" }}</span>
  </li>
  {% endif %}
{% endfor %}
</ul>