---
layout: page
title: "Nervous System Regulation"
permalink: /pillar/mental-emotional-wellness/nervous-system-regulation/
parent_pillar: mental-emotional-wellness
category_slug: nervous-system-regulation
order: 2
description: "Techniques that help your body shift from fight-or-flight into rest-and-digest."
toc: false
---

[← Back to Mental & Emotional Wellness](/pillar/mental-emotional-wellness/)

Techniques that help your body shift from fight-or-flight into rest-and-digest.

## Articles in Nervous System Regulation

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