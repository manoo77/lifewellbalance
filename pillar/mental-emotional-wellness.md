---
layout: page
title: "Mental & Emotional Wellness"
permalink: /pillar/mental-emotional-wellness/
pillar_slug: mental-emotional-wellness
order: 2
description: "Anxiety, nervous system regulation, and emotional resilience — practical tools for a calmer, more grounded life."
toc: false
---

Welcome to Mental & Emotional Wellness. These articles explore anxiety, nervous system regulation, and emotional resilience — practical tools for a calmer, more grounded life.

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

## All Articles in Mental & Emotional Wellness

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