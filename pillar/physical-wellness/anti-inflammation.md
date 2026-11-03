---
layout: page
title: "Anti-Inflammation"
permalink: /pillar/physical-wellness/anti-inflammation/
parent_pillar: physical-wellness
category_slug: anti-inflammation
order: 3
description: "Reducing chronic, low-grade inflammation — the common thread behind joint pain, fatigue, and mood issues."
toc: false
---

[← Back to Physical Wellness](/pillar/physical-wellness/)

Reducing chronic, low-grade inflammation — the common thread behind joint pain, fatigue, and mood issues.

## Articles in Anti-Inflammation

<ul class="posts-list">
{% for post in site.posts %}
  {% if post.categories contains page.category_slug %}
  <li>
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    <span class="post-date">{{ post.date | date: "%b %-d, %Y" }}</span>
  </li>
  {% endif %}
{% endfor %}
</ul>