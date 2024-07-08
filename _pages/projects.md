---
layout: archive
title: "Projects"
permalink: /projects/
author_profile: false
---
A more comprehensive list of projects listed chronologically with a brief description of each.

{% include base_path %}

{% for post in site.projects reversed %}
  {% include archive-single.html %}
{% endfor %}

