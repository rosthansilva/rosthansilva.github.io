---
layout: archive
title: Arquivo
permalink: /archive/
image: 08.jpg
---

{% for post in site.posts %}
  {% assign tags = tags | concat:post.tags %}
{% endfor %}
{% assign tags = tags | uniq | sort %}

<div>
  {% for tag in tags %}
	<h3 id="{{ tag | slugify }}">{{ tag }}</h3>
	<ul>
    {% for post in site.posts %}
      {% if post.tags contains tag %}
      <li>
        <a href="{{ post.url }}"> {{ post.title }} </a>
        <small>{{ post.date | date: "%B %-d, %Y" }}</small>
      </li>
      {% endif %}
    {% endfor %}
	</ul>
{% endfor %}
</div>