---
layout: page
title: projects
permalink: /projects/
description: Some side projects that I wrote and learnt from.
nav: true
nav_order: 3
display_categories: [</>]
horizontal: false
---

<!-- pages/projects.md -->
<hr>

<div class="projects">
{% assign sorted_projects = site.projects | where: "category", "</>" | sort: "importance" %}

<ul class="project-list">
  {% for project in sorted_projects %}
    <li class="project-list-item">
      {% if project.img %}
        {% if project.redirect %}
          <a href="{{ project.redirect }}" class="project-list-thumb">
        {% else %}
          <a href="{{ project.url | relative_url }}" class="project-list-thumb">
        {% endif %}
          <img src="{{ project.img | relative_url }}" alt="{{ project.title }}" loading="lazy">
        </a>
      {% endif %}
      <div class="project-list-body">
        {% if project.redirect %}
          <a href="{{ project.redirect }}" class="project-list-title">{{ project.title }}</a>
        {% else %}
          <a href="{{ project.url | relative_url }}" class="project-list-title">{{ project.title }}</a>
        {% endif %}
        <a href="{{ project.github }}" class="project-list-github" title="GitHub repository">
          <i class="fa-brands fa-github"></i>
        </a>
        {% if project.redirect_live %}
          <a href="{{ project.redirect_live }}" class="project-list-live">live at {{ project.redirect_live | remove: 'https://' }}</a>
        {% endif %}
        <p class="project-list-desc">{{ project.description }}</p>
      </div>
    </li>
  {% endfor %}
</ul>
</div>
