---
layout: page
title: All Articles
permalink: /articles/
pagination:
  enabled: true
  per_page: 10
  permalink: '/articles/page/:num/'
---

<div id="post-list" class="flex-grow-1 px-xl-1">
  {% for post in paginator.posts %}
    <article class="card-wrapper card">
      <a href="{{ post.url | relative_url }}" class="post-preview row g-0 flex-md-row-reverse">
        {% assign card_body_col = '12' %}

        {% if post.image %}
          {% assign src = post.image.path | default: post.image %}
          {% if post.media_subpath %}
            {% unless src contains '://' %}
              {% assign src = post.media_subpath | append: '/' | append: src
                | replace: '///', '/' | replace: '//', '/' %}
            {% endunless %}
          {% endif %}
          <div class="col-md-5">
            <img src="{{ src }}" alt="{{ post.image.alt | default: 'Preview Image' }}">
          </div>
          {% assign card_body_col = '7' %}
        {% endif %}

        <div class="col-md-{{ card_body_col }}">
          <div class="card-body d-flex flex-column">
            <h1 class="card-title my-2 mt-md-0">{{ post.title }}</h1>

            <div class="card-text content mt-0 mb-3">
              <p>
                {% if post.description %}
                  {{ post.description }}
                {% else %}
                  {{ post.content | strip_html | truncate: 160 }}
                {% endif %}
              </p>
            </div>

            <div class="post-meta flex-grow-1 d-flex align-items-end">
              <div class="me-auto">
                <i class="far fa-calendar fa-fw me-1"></i>
                <time>{{ post.date | date: "%b %-d, %Y" }}</time>

                {% if post.categories.size > 0 %}
                  <i class="far fa-folder-open fa-fw me-1 ms-2"></i>
                  <span class="categories">
                    {% for category in post.categories %}
                      {{ category }}{% unless forloop.last %}, {% endunless %}
                    {% endfor %}
                  </span>
                {% endif %}
              </div>
            </div>
          </div>
        </div>
      </a>
    </article>
  {% endfor %}
</div>

{% if paginator.total_pages > 1 %}
<nav class="articles-pager" aria-label="Pagination">
  {% if paginator.previous_page %}
    <a href="{{ paginator.previous_page_path | relative_url }}" class="pager-prev">← Newer</a>
  {% else %}
    <span class="pager-prev disabled">← Newer</span>
  {% endif %}

  <span class="pager-info">Page {{ paginator.page }} of {{ paginator.total_pages }}</span>

  {% if paginator.next_page %}
    <a href="{{ paginator.next_page_path | relative_url }}" class="pager-next">Older →</a>
  {% else %}
    <span class="pager-next disabled">Older →</span>
  {% endif %}
</nav>
{% endif %}